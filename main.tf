resource "aws_s3_bucket" "tf_lab_bucket" {
  bucket = "platform-automation-labs-${random_id.suffix.hex}"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tf_lab_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
