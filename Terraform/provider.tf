terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.6.0"
    }
  }
  backend "s3" {
    bucket = "test"
    key = "terraform.tfstate"
    region = "eu-west-1"

  }
}

provider "aws" {
  # Configuration options
}