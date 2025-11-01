variable "project" {
  type        = string
  description = "Project name for resource naming and tagging."
  default     = "eks-sandbox"
}

variable "region" {
  type        = string
  description = "AWS region where resources will be deployed."
  default     = "eu-west-1"
}

variable "environment" {
  type        = string
  description = "Environment name."
  default     = "dev"
}

#######################
#### VPC variables ####
#######################

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC network."
  default     = "10.0.0.0/16"
}

variable "vpc_prefix" {
  type        = string
  description = "Prefix for VPC resource names."
  default     = "eks-sandbox"
}

#######################
#### EKS variables ####
#######################

variable "eks_prefix" {
  type        = string
  description = "Prefix for EKS resource names."
  default     = "eks-sandbox"
}

variable "eks_version" {
  type        = string
  description = "EKS version."
  default     = "1.33"
}
