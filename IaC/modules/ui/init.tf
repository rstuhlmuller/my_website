terraform {
  required_providers {
    aws = {
      version = ">=4.66.1"
      configuration_aliases = [
        aws,
        aws.use1
      ]
    }
  }
}

