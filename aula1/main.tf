terraform {
  required_version = "1.1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.72.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  #profile = "default"
  #access_key = ""
  #secret_key = ""
}

resource "aws_s3_bucket" "my-test-bucket-jacob" {
  bucket = "my-test-bucket-jacob2"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Fabricio Jacob"
    UpdateAt    = "2022-01-01"
  }
}
