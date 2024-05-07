variable "aws_region" {
  description = "AWS region where infrastructure will be created"
  default     = "us-west-2"
}
variable "azs" {
  description = "Availability zones"
  default     = ["us-west-2a", "us-west-2b"]
}
variable "cidr_blocks_public" {
  description = "Public subnet cidr block"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
variable "cidr_blocks_private" {
  description = "Private subnet cidr block"
  type        = list(string)
  default     = ["10.0.102.0/24", "10.0.103.0/24"]
}
