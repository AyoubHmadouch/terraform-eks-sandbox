# main.tf

# VPC for EKS Cluster
module "vpc" {
  source = "git::https://github.com/AyoubHmadouch/terraform-aws-vpc.git?ref=master"

  name                      = var.vpc_prefix
  vpc_cidr                  = var.cidr_block
  tier                      = 2
  az_count                  = 2
  enable_nat_gateway_per_az = false # deploy only one nat gateway
  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }
  tags = {}
}

# EKS Cluster
module "eks" {
  source = "git::https://github.com/AyoubHmadouch/terraform-aws-eks.git"

  cluster_name            = var.eks_prefix
  cluster_version         = var.eks_version
  subnet_ids              = values(module.vpc.private_subnets)[*].id
  endpoint_private_access = false
  endpoint_public_access  = true

  managed_node_group = {
    node-group-01 = {
      instance_types = ["t3.medium"]
      desired_size   = 2
      max_size       = 3
      min_size       = 1
    }
  }
  depends_on = [module.vpc]
}
