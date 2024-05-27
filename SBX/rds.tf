module "rds" {
  source            = "../MODULES/rds"
  allocated_storage = 10
  engine         = "postgres"
  engine_version = "12.15"
  instance_class = "db.t3.micro"
  #username               = "ziyotek"
  password               = module.rds.db_password
  skip_final_snapshot    = true
  db_subnet_group_name   = module.rds.db_subnet_name
  vpc_security_group_ids = [module.vpc.vpc_security_group_id]
  storage_type           = "gp2"
  environment            = "prod"
  subnet_ids             = [module.vpc.public_subnet_1, module.vpc.public_subnet_3]
  
}


