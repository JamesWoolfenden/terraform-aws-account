terraform {
  required_version = "0.12.20"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "merchants"

    workspaces {
      name = "terraform-aws-current-cloudtrail-eu-west-2"
    }
  }
}
