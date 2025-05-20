terraform {
  backend "s3" {
    bucket = "remote-david-tfstate"
    key    = "argocd/terraform.tfstate"
    region = "us-east-1"
  }
}
