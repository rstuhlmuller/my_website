terraform {
  required_version = "~> 1"
  backend "s3" {
    bucket = "aws-rstuhlmuller-s3-usw2"
    key    = "IaC/my_website/tf_state.json"
    region = "us-west-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
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

provider "aws" {
  alias  = "use1"
  region = "us-east-1"

  default_tags {
    tags = {
      ManualBuild = "False"
      ManualTag   = "False"
      Repo        = "rstuhlmuller/my_website"
      Region      = "us-east-1"
      Owner       = "RodmanStuhlmullerIV"
    }
  }
}


module "my_website" {
  source = "./modules/ui"
  providers = {
    aws      = aws.usw2,
    aws.use1 = aws.use1
  }
}
