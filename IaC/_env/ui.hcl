terraform {
  source = "${dirname(find_in_parent_folders())}/modules/ui"
}

locals {
  common_vars  = yamldecode(file(find_in_parent_folders("common.yml")))
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl")).locals
  region_vars  = read_terragrunt_config(find_in_parent_folders("region.hcl")).locals
}

inputs = {
}