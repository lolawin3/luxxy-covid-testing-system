/*
 * Terraform variable declarations for AWS.
 */

variable "aws_credentials_file_path" {
  description = "Locate the AWS credentials file."
  type        = string
}

variable "aws_region" {
  description = "Default to US East (N. Virgínia) region."
  default     = "us-east-1"
}