output "public_subnet_id" {
  description = "Public subnet ID"
  value = aws_subnet.public_subnet[*].id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value = aws_subnet.private_subnet[*].id
}