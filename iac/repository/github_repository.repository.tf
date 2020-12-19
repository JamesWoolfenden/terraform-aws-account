resource "github_repository" "repository" {
  #checkov:skip=CKV_GIT_1: "Ensure Repository is Private"
  description   = var.description
  name          = var.name
  private       = var.private
  has_downloads = var.has_downloads
  has_issues    = var.has_issues
  has_wiki      = var.has_wiki
}
