terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.5"
    }
  }

  language = TF2021
}

module "aws" {
  source = "./modules/aws"
}

module "local" {
  source = "./modules/local"
}