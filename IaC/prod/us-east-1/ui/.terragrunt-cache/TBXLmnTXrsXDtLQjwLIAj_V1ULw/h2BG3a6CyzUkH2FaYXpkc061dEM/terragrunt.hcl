include "root" {
    path = find_in_parent_folders()
}

include "ui" {
    path = "${dirname(find_in_parent_folders())}/_env/ui.hcl"
}

generate "provider-use1" {
  path = "aws-use1-provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  alias = "use1"
  region = "us-east-1"
}
EOF
}