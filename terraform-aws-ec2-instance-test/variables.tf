variable "project_name" {
  default = "roboshop"
}

variable "env" {
  default = "dev"
}

variable "sg_ids" {
  type        = list(string)
  description = "The list of security group IDs for the instance"
}

variable "component" {
  default = "catalogue"
}