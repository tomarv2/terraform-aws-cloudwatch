locals {
  log_group_name = var.log_group_name != null ? var.log_group_name : "${var.teamid}-${var.prjid}"
}

resource "aws_cloudwatch_log_group" "cloudwatch" {
  name                        = format("/%s/%s", var.cloudwatch_path, local.log_group_name) #"/${var.cloudwatch_path}/"${var.teamid}-${var.prjid}
  tags                        = merge(local.shared_tags)
  retention_in_days           = var.retention_in_days
}