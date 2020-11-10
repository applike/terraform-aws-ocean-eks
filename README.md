# terraform-aws-ocean-eks

[![tflint](https://github.com/applike/terraform-aws-ocean-eks/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-ocean-eks/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/applike/terraform-aws-ocean-eks/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-ocean-eks/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/applike/terraform-aws-ocean-eks/workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-ocean-eks/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/applike/terraform-aws-ocean-eks/workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-ocean-eks/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/applike/terraform-aws-ocean-eks/workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-ocean-eks/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
[![release](https://github.com/applike/terraform-aws-ocean-eks/workflows/release/badge.svg?branch=master&event=push)](https://github.com/applike/terraform-aws-ocean-eks/actions?query=workflow%3Arelease+event%3Apush+branch%3Amaster)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/applike/terraform-aws-ocean-eks)
[![License](https://img.shields.io/github/license/applike/terraform-aws-ocean-eks)](https://github.com/applike/terraform-aws-ocean-eks/blob/master/LICENSE)

## Example
```hcl
module "ocean_eks" {
  source  = "applike/ocean-eks/aws"
  version = "1.0.0"
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| spotinst | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| spotinst\_account | Spot account ID | `string` | n/a | yes |
| spotinst\_token | Spot Personal Access token | `string` | n/a | yes |
| ami\_id | The image ID for the EKS worker nodes. If none is provided, Terraform will search for the latest version of their EKS optimized worker AMI based on platform | `string` | `null` | no |
| associate\_public\_ip\_address | Associate a public IP address to worker nodes | `bool` | `false` | no |
| cidr | The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden (only needed if new vpc is created) | `string` | `"0.0.0.0/0"` | no |
| cluster\_identifier | Cluster identifier | `string` | `null` | no |
| cluster\_name | Cluster name | `string` | `null` | no |
| cluster\_version | Kubernetes supported version | `string` | `"1.18"` | no |
| create\_vpc | Controls if VPC should be created (it affects almost all resources) | `bool` | `true` | no |
| key\_name | The key pair to attach to the worker nodes launched by Ocean | `string` | `"admin"` | no |
| max\_size | The upper limit of worker nodes the Ocean cluster can scale up to | `number` | `1000` | no |
| min\_size | The lower limit of worker nodes the Ocean cluster can scale down to | `number` | `1` | no |
| private\_subnet\_ids | A ID's of private subnets inside the VPC (only needed if no vpc is created) | `list(string)` | `[]` | no |
| private\_subnets | A list of private subnets inside the VPC (only needed if new vpc is created) | `list(string)` | `[]` | no |
| public\_subnets | A list of public subnets inside the VPC (only needed if new vpc is created) | `list(string)` | `[]` | no |
| region | The region the EKS cluster will be located | `string` | `"eu-central-1"` | no |
| subnets | A list of subnets to place the EKS cluster and workers within | `list(string)` | `null` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |
| vpc\_id | VPC where the cluster and workers will be deployed | `string` | `null` | no |
| vpc\_name | VPC name | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| cloudwatch\_log\_group\_name | Name of cloudwatch log group created |
| cluster\_arn | The Amazon Resource Name (ARN) of the cluster |
| cluster\_certificate\_authority\_data | Nested attribute containing certificate-authority-data for your cluster. This is the base64 encoded certificate data required to communicate with your cluster |
| cluster\_endpoint | The endpoint for your EKS Kubernetes API |
| cluster\_iam\_role\_arn | IAM role ARN of the EKS cluster |
| cluster\_iam\_role\_name | IAM role name of the EKS cluster |
| cluster\_id | The name/id of the EKS cluster |
| cluster\_oidc\_issuer\_url | The URL on the EKS cluster OIDC Issuer |
| cluster\_security\_group\_id | Security group ID attached to the EKS cluster |
| cluster\_version | The Kubernetes server version for the EKS cluster |
| config\_map\_aws\_auth | A kubernetes configuration to authenticate to this EKS cluster |
| kubeconfig | kubectl config file contents for this EKS cluster |
| kubeconfig\_filename | The filename of the generated kubectl config |
| ocean\_cluster\_id | The ID of the Ocean cluster |
| ocean\_controller\_id | The ID of the Ocean controller |
| oidc\_provider\_arn | The ARN of the OIDC Provider if `enable_irsa = true` |
| worker\_iam\_role\_arn | Default IAM role ARN for EKS worker groups |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
