resource "random_pet" "this" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-${random_pet.this.id}"
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.this.bucket
  key    = "instances/instances-${local.instance.ami}.json"
  source = "outputs.json"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("outputs.json")

  content_type = "application/json"
}