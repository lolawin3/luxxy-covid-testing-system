# Lines to create a AWS S3 bucket

resource "aws_s3_bucket" "bucket" {
  bucket = "luxxy-covid-testing-system-pdf-en-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  numeric  = false
  upper   = false 
}