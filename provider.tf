terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY

    default_tags {
    tags = {
      repository = "testing out"
    }
  }
}

terraform {
  cloud {
    organization = "yohanan"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      name = "VPC-creation"
    }
  }
}