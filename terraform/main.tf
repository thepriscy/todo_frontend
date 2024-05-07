module "vault" {
    source = "./vaults"
}

module "vpc" {
  source = "./module/vpc"
}

module "subnet" {
    source = "./module/subnet"
    vpc_id = module.vpc.vpc_id
    azs = var.azs
    cidr_blocks_public = var.cidr_blocks_public
    cidr_blocks_private = var.cidr_blocks_private
    internet_gateway = module.vpc.internet_gateway
}

module "compute" {
  source         = "./module/compute"
  security_group = [module.security_group.security_group_id]
  subnet_id = module.subnet.public_subnet_id[0] # Using the first public subnet
  public_key = module.vault.keypair
}

module "security_group" {
  source = "./module/security_group"
  vpc_id = module.vpc.vpc_id
}
