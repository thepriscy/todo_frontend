resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr_block
    tags = var.tags
    enable_dns_hostnames = true
    enable_dns_support = true
}

resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.vpc.id
}
