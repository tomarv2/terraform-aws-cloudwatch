output "log_group" {
  description = "Cloudwatch log group name"
  value       = module.cloudwatch.log_group_name
}

output "cloudwatch_log_group_arn" {
  description = "Cloudwatch log group ARN"
  value       = module.cloudwatch.log_group_arn
}
