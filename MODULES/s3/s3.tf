
locals {
  bucket_name_suffix = "ziyotek-bucket-2030"
}

resource "aws_s3_bucket" "iqies_my_first_resourse" {
  bucket = "${var.environment}-${local.bucket_name_suffix}-ferdows"

  tags = {
    Name        = "ziyotek"
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "iqies_my_first_resourse_1" {
  bucket = "${var.environment}-${local.bucket_name_suffix}-ferdows"

  tags = {
    Name        = "ziyotek"
    Environment = var.environment
  }
}