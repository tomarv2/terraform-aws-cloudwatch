terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 4.35"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "cloudwatch" {
  source = "../"

  config = {
    "/demo" = {
      retention_in_days = 7
    }
  }
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
