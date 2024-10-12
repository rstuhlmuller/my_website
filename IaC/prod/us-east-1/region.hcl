locals {
  region       = "us-east-1"
  region_short = "USW2"

  default_tags = {
    Region = local.region
  }
}