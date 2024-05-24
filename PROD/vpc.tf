module "vpc" {
    source = "../MODULES/vpc"
    environment = "prod"
    vpc_cidr_block = "20.10.0.0/16"
    subnet_1_cidr = "20.10.10.0/24"
    subnet_2_cidr = "20.10.20.0/24"
    subnet_3_cidr = "20.10.30.0/24"
}