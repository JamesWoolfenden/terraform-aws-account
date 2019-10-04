resource "aws_iam_group_policy_attachment" "test-attach" {
  group      = aws_iam_group.circleci.name
  policy_arn = data.aws_iam_policy.serverless.arn
}
