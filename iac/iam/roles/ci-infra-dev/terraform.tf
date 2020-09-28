terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "redwolf"

    workspaces {
      name = "iam-ci-infra-dev"
    }
  }
}
