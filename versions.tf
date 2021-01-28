terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    spotinst = {
      source = "spotinst/spotinst"
    }
  }
  required_version = ">= 0.13.5"
}
