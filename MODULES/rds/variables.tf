variable "allocated_storage" {
  description = "Storage size"
  type        = number
  default     = 10
}

variable "db_name" {
  description = "database name"
  type        = string
  default     = "ziyo"
}

variable "engine" {
  description = "Database engine"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "Database engine version"
  type        = string
  default     = "12.15"
}

variable "instance_class" {
  description = "Instance type"
  type        = string
  default     = "db.t3.micro"
}

variable "username" {
  description = "myusername"
  type        = string
  default     = "aziza_user"
}

variable "password_parameter_name" {
  description = "SSM parameter name for password."
  type        = string
  default     = "my_ssm_parameter_name"
}

variable "parameter_group_name" {
  description = "DB parameter group"
  type        = string
  default     = "db.postgres12"
}

variable "skip_final_snapshot" {
  description = "Skip final snapshot on delete."
  type        = bool
  default     = true
}

variable "db_subnet_group_name" {
  description = "DB subnet group name"
  type        = string
  default     = "ziyo_sub_group"
}

variable "vpc_security_group_ids" {
  description = "VPC security group IDs"
  type        = list(string)
  default     = ["sg-0215ec9cd2d2b3dd7"]
}

variable "storage_type" {
  description = "Storage type"
  type        = string
  default     = "gp2"
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
  default     = ["subnet-079b11557eeb24642", "subnet-06dc5a52e1cc5cbed"]
}

variable "environment" {
  description = "The environment name."
  type        = string
  default     = "sbx"
}
