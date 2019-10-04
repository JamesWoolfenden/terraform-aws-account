module "exampleA" {
  source         = "github.com/jameswoolfenden/terraform-aws-cross-account-role"
  policy_arns    = var.policy_arns
  role_name      = var.role_name
  principal_arns = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
}
