module "cloudwatch" {
  source = "../.."

  email                                 = var.email
  teamid                                = var.teamid
  prjid                                 = var.prjid

  cloudwatch_path                       = var.cloudwatch_path
}

