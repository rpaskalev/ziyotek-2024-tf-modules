module "vpc" {
    source = "../MODULES/vpc"
    environment = "prod"
    subnet_1_cidr = "20.10.10.0/24"
    subnet_2_cidr = "20.10.20.0/24"
    subnet_3_cidr = "20.10.30.0/24"
}