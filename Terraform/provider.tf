terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "tf-state-smtest"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
}
