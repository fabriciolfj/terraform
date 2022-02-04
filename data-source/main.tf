#esse bloco quer acessar os dados da aws, no caso do ec2
terraform {

  #required_version = "0.14.4"

  required_providers {

  }

  backend "s3" {
    bucket = "tfstate-882275682131"
    key = "dev/03-data-sources-23/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}