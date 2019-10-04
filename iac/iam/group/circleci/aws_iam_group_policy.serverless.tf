resource "aws_iam_group_policy" "serverless" {
  name   = "serverless"
  group  = aws_iam_group.circleci.id
  policy = data.aws_iam_policy_document.circleci.json
}
