resource "aws_iam_group_policy" "self_mfa" {
  name   = "self-mfa"
  group  = aws_iam_group.developers.id
  policy = data.aws_iam_policy_document.developer.json
}
