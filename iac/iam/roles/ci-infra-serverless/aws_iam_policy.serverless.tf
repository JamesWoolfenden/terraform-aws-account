resource "aws_iam_policy" "serverless" {
  name   = "serverless"
  policy = data.aws_iam_policy_document.serverless.json
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = module.cross-account.role_id
  policy_arn = aws_iam_policy.serverless.arn
}
