
/*
 * Terraform main configuration file (with provider definitions).
 */

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  shared_credentials_file = pathexpand(var.aws_credentials_file_path)
  region = var.aws_region
}

provider "google" {
  
}