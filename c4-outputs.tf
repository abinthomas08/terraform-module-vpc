output "vpc_id" {
  value = module.vpc.vpc_id
  description = "The id of the the created vpc"
}
output "public_subnet_ids" {
  
  value = module.vpc.public_subnet_ids
  description = "The ids of the public subnet"
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
  description = "The ids of the public subnet"
  
}


output "public_subnet_map" {
  value = module.vpc.public_subnet_map
  description = "Map of AZ to public subnet ID "

  
}

output "private_subnet_map" {
  
  value = module.vpc.private_subnet_map
  description = "Map of AZ to private subnet id"
}


