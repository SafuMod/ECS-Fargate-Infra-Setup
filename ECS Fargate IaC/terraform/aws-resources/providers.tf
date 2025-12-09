
terraform {
  backend "s3" {}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.83"
    }
  }
}

provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = var.assume_role_arn
  }
}
