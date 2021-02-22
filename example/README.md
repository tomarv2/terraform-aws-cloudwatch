## CloudWatch module usage

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudwatch\_path | name of the log group | `any` | n/a | yes |
| email | email address to be used for tagging (suggestion: use group email address) | `any` | n/a | yes |
| prjid | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| teamid | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| log\_group | The name of the default log group for the cluster. |

