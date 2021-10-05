output "log_group" {
  description = "The name of the log group."
  value       = aws_cloudwatch_log_group.cloudwatch.name
}

output "log_group_arn" {
  description = "Cloudwatch log group arn."
  value       = aws_cloudwatch_log_group.cloudwatch.arn
}
