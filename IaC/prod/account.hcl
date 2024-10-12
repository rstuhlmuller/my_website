locals {
  account_name = "Personal"
  fqdn         = "rodman.stuhlmuller.net"
  default_tags = {
    Env = local.account_name
  }
}