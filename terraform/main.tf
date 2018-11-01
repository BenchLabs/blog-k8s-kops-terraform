provider "aws" {
  region = "ca-central-1"
}

terraform {
  backend "s3" {
    bucket = "alberto-tf-state-blog"
    key    = "dev/terraform"
    region = "ca-central-1"
  }
}

locals {
  azs                     = ["ca-central-1a", "ca-central-1b"]
  environment             = "dev"
  kubernetes_cluster_name = "k8s-dev0"
  vpc_name                = "${local.environment}-vpc"
  ingress_ips             = ["10.0.0.100/32", "10.0.0.101/32"]

  tags = {
    environment = "${local.environment}"
    terraform   = true
  }
}

data "aws_region" "current" {}
