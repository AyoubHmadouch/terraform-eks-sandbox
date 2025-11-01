# VPC Outputs
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = values(module.vpc.private_subnets)[*].id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = values(module.vpc.public_subnets)[*].id
}
