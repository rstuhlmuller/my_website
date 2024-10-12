locals {
  common_vars  = yamldecode(file(find_in_parent_folders("common.yml")))
  region_vars  = read_terragrunt_config(find_in_parent_folders("region.hcl")).locals
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl")).locals

  region = local.region_vars.region

  default_tags = merge(
    local.common_vars.default_tags,
    local.region_vars.default_tags,
    local.account_vars.default_tags
  )
}

terraform {
  extra_arguments "plan" {
    commands = ["plan"]
    arguments = [
      "-out=plan.out"
    ]
  }
  after_hook "after_hook" {
    commands     = ["apply", "plan"]
    execute      = ["echo", "Finished running Terraform"]
    run_on_error = true
  }
}

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    bucket         = "aws-rstuhlmuller-s3-usw2"
    key            = "IaC/my_website/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}

generate "provider" {
  if_exists = "overwrite"
  path      = "provider.tf"
  contents  = <<EOF
provider "aws" {
  region       = "${local.region}"
  default_tags {
    tags = ${jsonencode(local.default_tags)}
  }
}
EOF
}