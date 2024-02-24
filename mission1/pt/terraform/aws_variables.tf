/*
 * Variaveis Terraform para AWS.
 */

variable "aws_credentials_file_path" {
  description = "Localiza o arquivo de credenciais da AWS."
  type        = string
}

variable "aws_region" {
  description = "Padrão para a região US East (N. Virgínia)."
  default     = "us-east-1"
}