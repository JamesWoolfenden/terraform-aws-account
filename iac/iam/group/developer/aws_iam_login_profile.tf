resource "aws_iam_user_login_profile" "developer" {
  count   = length(var.users)
  user    = element(var.users, count.index)
  pgp_key = "keybase:jameswoolfenden"
}
