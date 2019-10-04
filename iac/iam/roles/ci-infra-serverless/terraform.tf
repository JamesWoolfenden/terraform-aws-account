terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "slalom"

    workspaces {
      name = "iam-ci-infra-serverless"
    }
  }
}
