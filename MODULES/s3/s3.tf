
locals {
  bucket_name_suffix = "ziyotek-2024-bucket"
}

resource "aws_s3_bucket" "iqies_my_first_resourse" {
  bucket = "${var.environment}-${local.bucket_name_suffix}-reports"

  tags = {
    Name        = "ziyotek"
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "iqies_my_first_resourse_1" {
  bucket = "${var.environment}-${local.bucket_name_suffix}-measures"

  tags = {
    Name        = "ziyotek"
    Environment = var.environment
  }
}