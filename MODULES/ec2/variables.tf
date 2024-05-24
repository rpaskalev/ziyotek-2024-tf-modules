variable "environment" {}

variable "vpc_subnet_for_ec2" {}

variable "ebs_optimized" {
    default = false
}

variable "instance_type" {
    default = "t2.micro"
}

variable "vpc_security_group" {
    type = list
}