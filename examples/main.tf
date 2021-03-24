module "cloudwatch" {
  source = "../"

  cloudwatch_path = "/demo"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
