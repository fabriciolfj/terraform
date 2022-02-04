data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket = "tfstate-882275682131"
    key = "dev/03-data-sources-23/terraform.tfstate"
    region = "us-east-2"
  }
}