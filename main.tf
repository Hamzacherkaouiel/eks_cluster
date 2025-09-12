provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws={
      source="hashicorp/aws"
    }
  }
}
module "vpcs" {
  source = "./terraform-vps"
  env = "staging"
  region = "us-east-1"
  zone1 = "us-east-1a"
  zone2 = "us-east-1b"
  eks_name = "demo"
  eks_version = "1.33"
}