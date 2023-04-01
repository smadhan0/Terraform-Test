provider "aws" {
  region  = "us-east-1"
  #shared_credentials_file = "$HOME/.aws/credentials" # default
  access_key = "AKIA6JO2NIYX26K2IE46"
  secret_key = "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"
  #profile = "default" # you may change to desired profile
  #version = "~> 2.63"
}


terraform {
  backend "s3" {
    bucket = "ecsworkshopbucket01"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
