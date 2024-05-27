variable "allocated_storage" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "password" {}
variable "skip_final_snapshot" {
  type = bool
}
variable "vpc_security_group_ids" {
  type = list(any)
}
variable "db_subnet_group_name" {}
variable "storage_type" {}
variable "environment" {
  type     = string
}
variable "subnet_ids" {
  type = list(any)
}