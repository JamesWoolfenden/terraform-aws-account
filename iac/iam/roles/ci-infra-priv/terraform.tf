terraform {
  required_version="~> 0.12.0"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "redwolf"

    workspaces {
      name = "iam-ci-infra-priv"
    }
  }
}
