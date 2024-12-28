terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }
}

backend "s3" {
  bucket               = "my-project-recipe"
  key                  = "tf-state-deploy"
  workspace_key_prefix = "tf-state-deploy-env"
  region               = "us-east-1"
  encrypt              = true
  dynamodb_table       = "recipe-table"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      project     = var.project
      contact     = var.contact
      ManageBy    = "Terraform/Deploy"
    }
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}


data "aws_region" "current" {}