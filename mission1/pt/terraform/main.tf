
/*
 * Principal arquivo de configuração do Terraform
 */

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configura o AWS Provider
provider "aws" {
  shared_credentials_file = pathexpand(var.aws_credentials_file_path)
  region = var.aws_region
}

provider "google" {
  
}