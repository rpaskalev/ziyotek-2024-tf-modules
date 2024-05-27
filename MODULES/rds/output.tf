output "db_subnet_name" {
  value = aws_db_subnet_group.ziyo_subg.id

}

output "db_password" {
  value = aws_ssm_parameter.foo.value
}