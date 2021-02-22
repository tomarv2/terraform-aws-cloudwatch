[![](https://img.shields.io/badge/license-Apache%202-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)
# terraform-aws-cloudwatch
Terraform module for CloudWatch

## Versions

- Module tested for Terraform 0.14.
- AWS provider version [3.29.0](https://registry.terraform.io/providers/hashicorp/aws/latest)
- `main` branch: Provider versions not pinned to keep up with Terraform releases
- `tags` releases: Tags are pinned with versions (use tag latest tag in your releases)

**NOTE:**
- Read more on [tfremote](https://github.com/tomarv2/tfremote)


## Usage 

- **ECS:** Please refer to example directory [link](example/ecs/base/README.md)

- **ECS with Sidecar:** Please refer to example directory [link](example/ecs_with_sidecar/base/README.md)

## How to use?

Recommended method:

- Create python 3.6+ virtual environment 
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote
```

- Set below environment variables:
```
export TF_AWS_BUCKET=<remote state bucket name>
export TF_AWS_PROFILE=default
export TF_AWS_BUCKET_REGION=us-west-2
export PATH=$PATH:/usr/local/bin/
```  

- Update:
```
example/custom/sample.tfvars
```

- Following entries are required:

```
- account_id
- function_name
- role_arn
- source_file (relative path to the base directory or provide absolute path)
- output_file_path
- teamid
- prjid
```

- Change to: 
```
example/base
``` 

- Run and verify the output before deploying:
```
tf -cloud aws plan -var-file <path to .tfvars file>
```

- Run below to deploy:
```
tf -cloud aws apply -var-file <path to .tfvars file>
```

- Run below to destroy:
```
tf -cloud aws destroy -var-file <path to .tfvars file>
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | The AWS region to create resources | `string` | `"us-west-2"` | no |
| cloudwatch\_path | name of the log group | `any` | n/a | yes |
| email | email address to be used for tagging (suggestion: use group email address) | `any` | n/a | yes |
| log\_group\_name | log group name | `any` | `null` | no |
| prjid | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| profile\_to\_use | Getting values from ~/.aws/credentials | `string` | `"default"` | no |
| retention\_in\_days | (Optional) Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire. | `number` | `7` | no |
| teamid | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| log\_group | The name of the log group. |

