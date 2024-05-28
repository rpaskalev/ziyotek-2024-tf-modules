module "rds" {
  source             = "../MODULES/rds"
  environment_name   = "sbx"
  instance_class     = "db.t3.micro"
  storage_type       = "gp2"
  allocated_storage  = "10"
  subnet_ids         = ["module.vpc.public_subnet_1.id", "module.vpc.public_subnet_2"]
  vpc_security_group = [module.vpc.vpc_security_group_id]
  db_subnet_group_name = ???????? 
}