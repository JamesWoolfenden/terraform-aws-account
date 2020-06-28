terraform {
  required_version = "~> 0.12.0"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "merchants"

    workspaces {
      name = "terraform-aws-current-inspector-eu-west-2"
    }
  }
}
