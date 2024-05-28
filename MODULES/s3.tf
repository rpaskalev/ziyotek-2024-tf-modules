resource "aws_s3_bucket" "bucket_amer" {
  bucket = "amer-tf-projrct-bucket"

  tags = {
    Name        = "amer_bucket"
    Environment = "true"
  }
}