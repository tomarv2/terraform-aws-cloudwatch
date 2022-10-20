resource "aws_cloudwatch_log_group" "cloudwatch" {
  for_each = var.cloudwatch_config != null ? var.cloudwatch_config : {}

  name              = format("%s/%s", try(each.key, "/"), "${var.teamid}-${var.prjid}")
  retention_in_days = try(each.value.retention_in_days, 7)
  tags              = merge(local.shared_tags, var.extra_tags)
}
