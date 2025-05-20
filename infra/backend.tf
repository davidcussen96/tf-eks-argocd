terraform {
  backend "s3" {
    bucket = "remote-david-tfstate"
    key    = "infra/terraform.tfstate"
    region = "us-east-1"
  }
}
