data "aws_iam_policy" "serverless" {
  arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/serverless"
}
