terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "slalom"

    workspaces {
      name = "terraform-aws-vpn"
    }
  }
}
