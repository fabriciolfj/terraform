terraform {
  required_version = "1.1.3"

  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "3.72.0"
      }
  }
}

provider "aws" {
    region = "us-east-1"
    profile = "default"
}

resource "aws_s3_bucket" "my-test-bucket-jacob" {
  bucket = "my-test-bucket-jacob"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}