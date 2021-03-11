resource "aws_iam_role_policy" "network-priv" {
  name = "network-priv"
  role = module.cross-account.role_id

  policy = data.aws_iam_policy_document.network-priv.json
}
