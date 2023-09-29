terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  profile = "default"
  region = "us-west-2"
}
