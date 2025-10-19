# main.tf

# VPC for EKS Cluster
module "eks-vpc" {
  source = "git::https://github.com/AyoubHmadouch/terraform-aws-vpc.git?ref=master"

  name     = var.vpc_prefix
  vpc_cidr = var.cidr_block
  tier     = 2
  az_count = 2
  enable_nat_gateway_per_az = false # deploy only one nat gateway
  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }
  tags = {}
}