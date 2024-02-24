/*
 * Variaveis Terraform para GCP.
 */

variable "gcp_project_id" {
  description = "ID do Projeto GCP."
  type        = string
}

variable "gcp_region" {
  description = "Padrão para região de Ashburn, Virginia"
  default     = "us-east4"
}