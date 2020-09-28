terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "redwolf"

    workspaces {
      name = "iam-group-circleci"
    }
  }
}
