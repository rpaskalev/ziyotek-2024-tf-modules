resource "aws_db_instance" "default" {
  allocated_storage    = var.rds_storage
  db_name              = var.rds_name
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  username             = var.rds_user
  password             = aws_ssm_parameter.foo.value
  parameter_group_name = var.rds_pgm
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.ziyo_subg.id
  vpc_security_group_ids = [aws_security_group.ziyo_security_group.id]
  storage_type = var.rds_storage_type
}

resource "aws_db_subnet_group" "ziyo_subg" {
  name       = var.rds_subnet_group
  subnet_ids = [aws_subnet.ziyo_subnet_public.id, aws_subnet.ziyo_subnet_private.id]
}

resource "random_password" "password" {
  length  = 10
  special = false
}

resource "aws_ssm_parameter" "foo" {
  name  = var.rds_ssm_name
  type  = var.rds_ssm_type
  value = random_password.password.result
  # key_id = data.aws_kms_key.by_alias.id
}

resource "aws_kms_key" "ssm_key" {
  description             = "KMS for encrypting ssm params"
  deletion_window_in_days = 10
}