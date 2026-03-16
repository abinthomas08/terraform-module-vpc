module "vpc" {
    source = "./modules/vpc"
    environment_name = var.environment_name
    subnet_newbits = var.subnet_newbits
    vpc_cidr = var.vpc_cidr
    tags = var.tags
  
}