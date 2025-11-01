<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.95.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | git::https://github.com/AyoubHmadouch/terraform-aws-eks.git | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/AyoubHmadouch/terraform-aws-vpc.git | master |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block for the VPC network. | `string` | `"10.0.0.0/16"` | no |
| <a name="input_eks_prefix"></a> [eks\_prefix](#input\_eks\_prefix) | Prefix for EKS resource names. | `string` | `"eks-sandbox"` | no |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | EKS version. | `string` | `"1.33"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name. | `string` | `"dev"` | no |
| <a name="input_project"></a> [project](#input\_project) | Project name for resource naming and tagging. | `string` | `"eks-sandbox"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region where resources will be deployed. | `string` | `"eu-west-1"` | no |
| <a name="input_vpc_prefix"></a> [vpc\_prefix](#input\_vpc\_prefix) | Prefix for VPC resource names. | `string` | `"eks-sandbox"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | IDs of the private subnets |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | IDs of the public subnets |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID of the VPC |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
