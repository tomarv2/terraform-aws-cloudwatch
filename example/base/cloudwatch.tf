module "cloudwatch" {
  source = "./../../../_modules/aws/cloudwatch/cloudwatch"

  email                                 = var.email
  teamid                                = var.teamid
  prjid                                 = var.prjid

  cloudwatch_path                       = var.cloudwatch_path
}

