
locals {
  bucket_name_suffix = "ziyotek-2024-bucket"
}

resource "aws_s3_bucket" "iqies_my_first_resourse" {
  for_each = var.s3_buckets_map
  bucket = "${var.environment}-${each.key}-reports"

  tags = {
    Name        = "ziyotek"
    Environment = "${var.environment}-${each.value}"
  }
}

variable "s3_buckets_map" {
  default = {
    bucket_1_ziyo = "dev"
    bucket_2_ziyo = "prod"
  }
}

locals {
  s3_prefix = var.environment
  body      = "${local.s3_prefix}-ziyotek"
}

resource "aws_s3_bucket" "ziyo_bucket_gov" {
  count         = var.environment == "prod" ? 2 : 3
  bucket        = "${local.s3_prefix}-ziyotek-2023-spring-class-devops-${count.index}"
  force_destroy = true
  tags = {
    Environment   = var.environment
    Bucket_number = "${count.index}"
  }
}
