output "vpc_id" {
    description = "VPC id"
    value = aws_vpc.vpc.id
}

output "vpc_cidr_block" {
  description = "VPC cidr block"
  value = aws_vpc.vpc.cidr_block
}

output "internet_gateway" {
  description = "Internet Gateway"
  value = aws_internet_gateway.internet_gateway.id
}