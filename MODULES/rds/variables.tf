variable "rds_storage" {
    type = number 
    default = 10
}

variable "rds_name" {
    type = string
    default = "ziyo"
    nullable = false
}

variable "rds_engine" {
    type = string
    default = "postgres"
    nullable = false
}

variable "rds_engine_version" {
    type = string
    default = "12.15"
    nullable = false
}

variable "rds_user" {
    type = string
    default = "ziyo_user"
    nullable = false
}

# variable "rds_pass" {
#     type = string
#     default = aws_ssm_parameter.foo.value
#     nullable = false
# }

variable "rds_pgm" {
    type = string
    default = "default.postgres12"
    nullable = false
}

variable "rds_storage_type" {
    type = string
    default = "gp2"
    nullable = false
}

variable "rds_instance_class" {
    default = "db.t3.micro"
    nullable = false
}

variable "rds_subnet_group" {
    type = string
    default = "ziyo_sub_group"
    nullable = false
}

variable "rds_ssm_name" {
    type = string
    default = "ziyo_2024_class_rds_pass"
    nullable = false
}

variable "rds_ssm_type" {
    type = string
    default = "SecureString"
    nullable = false
}