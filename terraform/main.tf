provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "tf-state-blog"
    key    = "dev/terraform"
    region = "eu-west-2"
  }
}

locals {
  azs                    = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  environment            = "dev"
  kops_state_bucket_name = "${local.environment}-kops-state"

  // Needs to be a FQDN
  kubernetes_cluster_name = "k8s-dev0.domain.com"
  ingress_ips             = ["10.0.0.100/32", "10.0.0.101/32"]
  vpc_name                = "${local.environment}-vpc"

  tags = {
    environment = "${local.environment}"
    terraform   = true
  }
}

data "aws_region" "current" {}
