resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "test22"
  engine               = "postgres"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "tory_user"
  password             = aws_ssm_parameter.foo.value
  parameter_group_name = "default.postgres12"
  skip_final_snapshot  = true
  db_subnet_group_name = "aws_db_subnet_group"
  vpc_security_group_ids = ["sg-000ccdff725b2a598"]
  storage_type = "gp2"
}

resource "aws_db_subnet_group" "my-subnet2" {
  name       = "my-subnet2"
  subnet_ids = ["subnet-0c5ad8d64c834f972"]
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

