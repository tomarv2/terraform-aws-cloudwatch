provider "aws" {
  region  = "us-west-2"
  profile = "default"
}

terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = ">= 3.47"
    }
  }
}

module "cloudwatch" {
  source = "../"

  cloudwatch_path = "/demo"

  custom_tags = {
    ExportToS3 = "True"
  }
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
