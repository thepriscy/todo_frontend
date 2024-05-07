resource "aws_security_group" "security_group" {
    name = var.security_group_name
    description = "Allow SSH, HTTP, HTTPS traffic from anywhere"
    vpc_id = var.vpc_id
}

# Ingress rule to allow SSH traffic
resource "aws_vpc_security_group_ingress_rule" "allow-ssh" {
    description = "Allows SSH"
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
    cidr_ipv4 = var.cidr_block_ssh
    security_group_id = aws_security_group.security_group.id
}

# Ingress rule to allow HTTP traffic
resource "aws_vpc_security_group_ingress_rule" "allow-http" {
    description = "Allow HTTP"
    from_port = 80
    to_port = 80
    ip_protocol = "tcp"
    cidr_ipv4 = var.cidr_block
    security_group_id = aws_security_group.security_group.id
}

# Ingress rule to allow HTTPS traffic
resource "aws_vpc_security_group_ingress_rule" "allow-https" {
    description = "Allow HTTPS"
    from_port = 443
    to_port = 443
    ip_protocol = "tcp"
    cidr_ipv4 = var.cidr_block
    security_group_id = aws_security_group.security_group.id
}

# Egress rule to allow all outgoing traffic
resource "aws_vpc_security_group_egress_rule" "allow-outbound-all" {
    description = "Allow all outbound traffic"
    ip_protocol = "-1"
    cidr_ipv4 = var.cidr_block
    security_group_id = aws_security_group.security_group.id
}
