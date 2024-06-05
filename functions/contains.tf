# locals {
#     companies = ["bucket-${var.environment}-etl-1", "bucket-${var.environment}-etl-2"]

#     prod_bucket = "prod1-rady-ziyo-pord-bucket"

#     bucket_count = contains(local.companies, var.company) ? 2 : 0
# }

# resource "aws_s3_bucket" "name" {
#   count = local.bucket_count # count = contains(["prod", qa", "preprod"], var.environment) ? 1 : 0
#   bucket = "${local.prod_bucket}${count.index}"
# }

# variable "environment" {
#   default = "sbx"
# }

# variable "company" {
#     default = "bucket-prod1-etl-1"
# }