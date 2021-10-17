output "log_group_name" {
  description = "Cloudwatch log group name."
  value       = join("", aws_cloudwatch_log_group.cloudwatch.*.name)
}

output "log_group_arn" {
  description = "Cloudwatch log group arn."
  value       = join("", aws_cloudwatch_log_group.cloudwatch.*.arn)
}
