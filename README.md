<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.35 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.35 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.cloudwatch](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudwatch_config"></a> [cloudwatch\_config](#input\_cloudwatch\_config) | Cloudwatch log group configuration | `map(any)` | `{}` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags to associate | `map(string)` | `{}` | no |
| <a name="input_prjid"></a> [prjid](#input\_prjid) | Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_teamid"></a> [teamid](#input\_teamid) | Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_group_arn"></a> [log\_group\_arn](#output\_log\_group\_arn) | Cloudwatch log group ARN |
| <a name="output_log_group_name"></a> [log\_group\_name](#output\_log\_group\_name) | Cloudwatch log group name |
<!-- END_TF_DOCS -->