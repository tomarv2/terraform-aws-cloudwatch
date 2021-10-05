output "log_group" {
  description = "The name of the default log group for the cluster."
  value       = module.cloudwatch.log_group
}

output "cloudwatch_log_group_arn" {
  description = "Cloudwatch log group arn."
  value       = module.cloudwatch.log_group_arn
}
