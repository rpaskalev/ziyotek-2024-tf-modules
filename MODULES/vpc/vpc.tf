resource "aws_vpc" "my_vpc" {
  count = length(var.vpcs_to_add)
  cidr_block = var.vpcs_to_add[count.index]

  tags = {
    Environment = var.environment
  }
}


variable "vpcs_to_add" {
  default = [
    "10.10.0.0/16",
    "20.10.0.0/16"
  ]
}