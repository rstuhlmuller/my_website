terraform {
  required_version = ">=1.4.5"
  backend "s3" {
    bucket = "aws-rstuhlmuller-s3-usw2"
    key    = "IaC/my_website/tf_state.json"
    region = "us-west-2"
  }
  required_providers {
    aws = {
      version = ">=4.66.1"
    }
  }
}

provider "aws" {
  alias  = "usw2"
  region = "us-west-2"

  default_tags {
    tags = {
      ManualBuild = "False"
      ManualTag   = "False"
      Repo        = "rstuhlmuller/my_website"
      Region      = "us-west-2"
      Owner       = "RodmanStuhlmullerIV"
    }
  }
}

module "my_website" {
  source = "./modules/ui"
  providers = {
    aws.usw2 = aws.usw2
  }
}