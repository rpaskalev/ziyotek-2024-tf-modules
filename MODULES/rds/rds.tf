resource "aws_db_instance" "ziyo" {
  allocated_storage      = var.allocated_storage
  db_name                = var.ziyo_name
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.username
  password               = aws_ssm_parameter.aziza.value
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = var.skip_final_snapshot
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  storage_type           = var.storage_type
}

resource "aws_ssm_parameter" "aziza" {
  name  = "my_ssm_parameter_name"
  type  = "SecureString"
  value = random_password.password.result
}

resource "random_password" "password" {
  length  = 10
  special = false
}
