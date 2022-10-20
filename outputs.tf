output "log_group_name" {
  description = "Cloudwatch log group name"
  value       = [for log_group in aws_cloudwatch_log_group.cloudwatch : log_group.name]
}

output "log_group_arn" {
  description = "Cloudwatch log group ARN"
  value       = [for log_group in aws_cloudwatch_log_group.cloudwatch : log_group.arn]
}
