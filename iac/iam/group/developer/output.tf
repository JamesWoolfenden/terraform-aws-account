output "password" {
  value = aws_iam_user_login_profile.developer.*.encrypted_password
}

output "users" {
  value = aws_iam_user.names.*.name
}

output "login_url" {
  value = "https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console/"
}
