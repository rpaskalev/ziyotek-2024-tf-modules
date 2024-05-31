module "vpc" {
    source = "../MODULES/vpc"
    environment = "sbx"
    subnet_1_cidr = "10.10.10.0/24"
    subnet_2_cidr = "10.10.20.0/24"
    subnet_3_cidr = "10.10.30.0/24"
}