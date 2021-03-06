module "cross-account" {
  source      = "github.com/jameswoolfenden/terraform-aws-cross-account-role"
  common_tags = var.common_tags
  policy_arns = concat(var.policy_arns, )
  role_name   = var.role_name
  principal_arns = [
    "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/circleci",
    "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/JamesWoolfenden",
    "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/sunnyjunejo",
    "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/robertotorres",
    "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/mylesharding"
  ]
}
