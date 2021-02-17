output "log_group" {
  description = "The name of the default log group for the cluster."
  value = module.cloudwatch.log_group
}
