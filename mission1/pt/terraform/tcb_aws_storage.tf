# Linhas para criar o bucket S3 na AWS

resource "aws_s3_bucket" "bucket" {
  bucket = "luxxy-covid-testing-system-pdf-pt-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  numeric  = false
  upper   = false 
}