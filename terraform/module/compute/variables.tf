variable "ami" {
  description = "EC2 instance AMI"
  type = string
  default = "ami-0cf2b4e024cdb6960"
}

variable "instance_type" {
  description = "EC2 instance AMI"
  type = string
  default = "t2.micro"
}

variable "public_key" {
  description = ""
}

variable "security_group" {
    description = "Security group to attanched to the instance"
}
variable "subnet_id" {
    description = "Subnet that the ec2 will reside in"

}

variable "key_name" {
    description = "SSH key name"
    default = "todo3"
}
