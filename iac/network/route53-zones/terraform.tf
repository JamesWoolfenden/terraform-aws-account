terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "slalom"

    workspaces {
      name = "route53-zones"
    }
  }
}
