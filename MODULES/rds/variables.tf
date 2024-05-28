variable "environment_name" {
  type = string
  nullable = false
}

variable "db_name" {
  type    = string
  default = "student-db"
}

variable "allocated_storage" {
  type  = number
  nullable = false
}

variable "db_engine" {
  type    = string
  default = "mariadb"
}

variable "engine_version" {
  type    = string
  nullable = false
  default = "10.11.6"
}

variable "instance_class" {
  type    = string
#  default = "db.t3.micro"
  nullable = false
}

variable "db_username" {
  type    = string
  default = "ziyo_user"
}

variable "db_password" {
  type    = string
  default = "aws_ssm_parameter.ssm-password.value"

}
variable "parameter_group_name" {
  type    = string
  default = "default.mariadb10.11"

}
variable "skip_final_snapshot" {
  type    = bool
  default = true

}
variable "db_subnet_group_name" {}

variable "storage_type" {
  type    = string
  nullable = false

}
variable "ssm_PS_name" {
  type    = string
  default = "ziyo_2024_class_rds_pass"
}


variable "subnet_ids" {
  type        = list(string)
  default     = []
}

variable "vpc_security_group" {
  type = list
  default = []
}
