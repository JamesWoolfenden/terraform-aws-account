resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}

resource "aws_iam_user" "names" {
  count = length(var.users)
  name  = element(var.users, count.index)
  path  = "/"

  tags = var.common_tags
}

resource "aws_iam_group_membership" "team" {
  name = "developer-membership"

  users = [aws_iam_user.names.*.name]
  group = aws_iam_group.developers.name
}
