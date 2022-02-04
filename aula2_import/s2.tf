resource "aws_s3_bucket" "manual" {
  bucket = "testefabricio2"

  tags = {
    Name        = "bucket test"
    Managed     = "terraform"
  }
}