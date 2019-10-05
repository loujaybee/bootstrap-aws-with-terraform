provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-1"
}

# terraform {
#   backend "s3" {
#     bucket = "thedevcoach-terraform-state"
#     key    = "default-terraform-state"
#     region = "eu-central-1"
#   }
# }

resource "aws_s3_bucket" "terraform-remote-state" {
  bucket = "terraform-remote-state-[your-account-id]"

  versioning = {
    enabled = true
  }
}
