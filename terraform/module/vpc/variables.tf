variable "vpc_cidr_block" {
    description = "CIDR Block for VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "tags" {
    description = "VPC tags"
    type = map(string)
    default = {
          Name = "todo-vpc"
          Project = "Todo"
          ManagedBy = "Terraform"
    }
}
