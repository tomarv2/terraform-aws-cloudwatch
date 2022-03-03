variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "cloudwatch_path" {
  description = "name of the log group"
  type        = string
  default     = "/"
}

variable "log_group_name" {
  description = "log group name"
  default     = null
  type        = string
}

variable "retention_in_days" {
  default     = 7
  description = "(Optional) Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire."
  type        = number
}

variable "custom_tags" {
  type        = any
  description = "Extra custom tags"
  default     = null
}

variable "deploy_cloudwatch" {
  description = "feature flag, true or false"
  default     = true
  type        = bool
}
