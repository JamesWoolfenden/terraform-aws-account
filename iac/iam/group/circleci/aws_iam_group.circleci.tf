resource "aws_iam_group" "circleci" {
  name = "circleci"
  path = "/users/"
}

resource "aws_iam_user" "name" {
  name = var.user
  path = "/"

  tags = var.common_tags
}

resource "aws_iam_group_membership" "team" {
  name = "circleci-membership"

  users = [aws_iam_user.name.name]
  group = aws_iam_group.circleci.name
}
