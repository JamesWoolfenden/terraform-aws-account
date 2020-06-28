terraform {
  required_version="~> 0.12.0"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "slalom"

    workspaces {
      name = "iam-ci-infra-priv"
    }
  }
}
