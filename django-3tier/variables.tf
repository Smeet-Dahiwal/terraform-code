variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

variable "project_name" {
  default = "djangoapp"
}

variable "db_username" {
  default = "django_user"
}

variable "db_password" {
  description = "RDS database password"
  sensitive   = true
}

variable "key_name" {
  description = "EC2 Key Pair Name"
}