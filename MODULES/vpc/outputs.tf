output "public_subnet_1" {
    value = aws_subnet.my_subnet_1.id
}

output "vpc_security_group_id" {
    value = aws_security_group.allow_all.id
}