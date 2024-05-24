variable "vpc_cidr_block" {
    type = string
    nullable = false
}

variable "subnet_1_cidr" {}

variable "subnet_2_cidr" {}

variable "subnet_3_cidr" {}

variable "environment" {
    nullable = false
}