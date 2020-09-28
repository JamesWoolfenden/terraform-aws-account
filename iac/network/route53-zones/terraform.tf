terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "redwolf"

    workspaces {
      name = "route53-zones"
    }
  }
}
