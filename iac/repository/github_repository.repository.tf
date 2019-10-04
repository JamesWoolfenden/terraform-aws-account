resource "github_repository" "repository" {
  description   = var.description
  name          = var.name
  private       = var.private
  has_downloads = var.has_downloads
  has_issues    = var.has_issues
  has_wiki      = var.has_wiki
}
