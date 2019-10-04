data "aws_iam_policy_document" "network-priv" {
  statement {
    actions = [
      "route53:*",
    ]

    resources = ["*"]
  }

  statement {
    actions = [
      "ec2:DescribeVpcs",
    ]

    resources = ["*"]
  }

  statement {
    actions = [
      "s3:*",
    ]

    resources = ["*"]
  }

}
