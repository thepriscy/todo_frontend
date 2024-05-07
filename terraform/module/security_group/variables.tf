variable "vpc_id" {
    description = "VPC id"
}

variable "security_group_name" {
  description = "Name for security group"
  default = "todo-security-group"
}

variable "cidr_block" {
  description = "CIDR block"
  default = "0.0.0.0/0"
}

variable "cidr_block_ssh" {
  description = "CIDR block"
  default = "0.0.0.0/0"
}
