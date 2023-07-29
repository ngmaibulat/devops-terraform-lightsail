
variable "aws_region" {

  description = "AWS region to deploy to"
  default     = "eu-central-1"
  type        = string

}

variable "db_user" {

  description = "Database User"
  type        = string

}


variable "db_password" {

  description = "Database Password"
  type        = string

}
