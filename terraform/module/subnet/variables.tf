variable "vpc_id" {
}
variable "azs" {
}
variable "cidr_blocks_public" {
}
variable "cidr_blocks_private" {
}
variable "internet_gateway" {
}
variable "destination_cidr_block" {
default = "0.0.0.0/0"
}