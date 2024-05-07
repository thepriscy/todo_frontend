output "vpc_id" {
    description = "VPC id"
    value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "VPC cidr block"
  value = module.vpc.vpc_cidr_block
}
output "security_group_id" {
    description = "Security group ID"
    value = module.security_group.security_group_id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value = module.subnet.public_subnet_id
}

output "ip_address" {
value = module.compute.ip_address
}

