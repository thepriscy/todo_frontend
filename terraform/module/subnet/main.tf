resource "aws_subnet" "public_subnet" {
    count = length(var.azs)
    vpc_id = var.vpc_id
    availability_zone = var.azs[count.index]
    cidr_block = var.cidr_blocks_public[count.index]
    map_public_ip_on_launch = true
    tags = {
      Name = "public-subnet-${var.azs[count.index]}"
      ManagedBy = "Terraform"
    }
}
resource "aws_route_table" "route" {
  vpc_id = var.vpc_id
}
resource "aws_route" "public_internet_gateway" {
    count = length(var.azs)
    destination_cidr_block = var.destination_cidr_block
    gateway_id = var.internet_gateway
    route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "assoc" {
count = length(var.azs)
    subnet_id = aws_subnet.public_subnet[count.index].id
    route_table_id = aws_route_table.route.id
}
resource "aws_subnet" "private_subnet" {
    count = length(var.azs)
    vpc_id = var.vpc_id
    cidr_block = var.cidr_blocks_private[count.index]
    tags = {
      Name = "private-subnet-${var.azs[count.index]}"
      ManagedBy = "Terraform"
    }
}