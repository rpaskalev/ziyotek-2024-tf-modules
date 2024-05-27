module "vpc" {
  source         = "../MODULES/vpc"
  environment    = "sbx"
  vpc_cidr_block = "10.10.0.0/16"
  subnet_1_cidr  = "10.10.10.0/24"
  subnet_2_cidr  = "10.10.20.0/24"
  subnet_3_cidr  = "10.10.30.0/24"
}