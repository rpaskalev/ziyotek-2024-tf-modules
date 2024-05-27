locals {
  db_name  = "ziyo"
  username = "ziyo_user"
}
resource "aws_db_instance" "default" {
  allocated_storage      = var.allocated_storage
  db_name                = "${local.db_name}_${var.environment}"
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = "${local.username}_${var.environment}"
  password               = var.password
  parameter_group_name   = "default.postgres12"
  skip_final_snapshot    = var.skip_final_snapshot
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  storage_type           = var.storage_type
  tags = {
    name        = "ziyotek"
    environment = var.environment
  }
}

resource "aws_db_subnet_group" "ziyo_subg" {
  name       = "ziyo_sub_group"
  subnet_ids = var.subnet_ids
}

resource "random_password" "password" {
  length  = 10
  special = false
}

resource "aws_ssm_parameter" "foo" {
  name  = "ziyo_2024_class_rds_pass"
  type  = "SecureString"
  value = random_password.password.result

}

