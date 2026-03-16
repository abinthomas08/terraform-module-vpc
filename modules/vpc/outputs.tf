output "vpc_id" {
  value = aws_vpc.main.id
  description = "The id of the the created vpc"
}
output "public_subnet_ids" {
  
  value = [for s in aws_subnet.public: s.id]
  description = "The ids of the public subnet"
}

output "private_subnet_ids" {
  value = [for s in aws_subnet.private : s.id ]
  description = "The ids of the public subnet"
  
}


output "public_subnet_map" {
  value = {for az,subnet in aws_subnet.public:az => subnet.id}
  description = "Map of AZ to public subnet ID "

  
}

output "private_subnet_map" {
  
  value = {for az, subnet in aws_subnet.private : az => subnet.id}
  description = "Map of AZ to private subnet id"
}


