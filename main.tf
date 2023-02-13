provider "aws" {
  region = var.region
  access_key = "AKIAZ3APSXWHZU2GCPPY"
  secret_key = "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"
}

module "s3-webapp" {
  source  = "app.terraform.io/pingping/s3-app/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
