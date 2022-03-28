locals {
  log_group_name = var.log_group_name != null ? var.log_group_name : "${var.teamid}-${var.prjid}"
}

resource "aws_cloudwatch_log_group" "cloudwatch" {
  count = var.deploy_cloudwatch ? 1 : 0

  name              = format("%s/%s", var.cloudwatch_path, local.log_group_name)
  tags              = var.custom_tags != null ? merge(var.custom_tags, local.shared_tags) : merge(local.shared_tags)
  retention_in_days = var.retention_in_days
}
