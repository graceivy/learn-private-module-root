provider "aws" {
  region = var.region
  access_key = ""
  secret_key = ""
}

module "s3-webapp" {
  source  = "app.terraform.io/pingping/s3-app/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
