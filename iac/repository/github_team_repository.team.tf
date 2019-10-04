resource "github_team_repository" "team" {
  team_id    = data.github_team.team.id
  repository = github_repository.repository.name
  permission = var.team_permission
}
