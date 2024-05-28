# modules/rds/variables.tf

variable "allocated_storage" {
  description = "The allocated storage in GB"
  type        = number
  default     = 10
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "The database engine version"
  type        = string
  default     = "5.7"
}

variable "instance_class" {
  description = "The RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "name" {
  description = "The name of the database"
  type        = string
  default     = "test22"
}

variable "username" {
  description = "The username for the database"
  type        = string
  default     = "tory_user"
}



variable "parameter_group_name" {
  description = "The name of the DB parameter group to associate"
  type        = string
  default     = "default.postgres12"
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted"
  type        = bool
  default     = true
}


variable "environment" {  
   description = "The environment name"   
   type        = string   
   default     = "sbx"
}