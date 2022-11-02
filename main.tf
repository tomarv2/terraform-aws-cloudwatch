resource "aws_cloudwatch_log_group" "cloudwatch" {
  for_each = var.config

  name              = each.key
  retention_in_days = try(each.value.retention_in_days, 7)
  tags              = merge(local.shared_tags, var.extra_tags)
}
