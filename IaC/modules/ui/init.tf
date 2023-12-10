terraform {
  required_providers {
    aws = {
      version = "~> 5"
      configuration_aliases = [
        aws,
        aws.use1
      ]
    }
  }
}

