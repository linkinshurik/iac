variable "region" {
  type    = string
  default = "us-east-1"
}

variable "db_name" {
  type    = string
  default = "petclinic"
}

variable "db_username" {
  type    = string
  default = "admin"
}

variable "db_password" {
  type      = string
  sensitive = true
}
