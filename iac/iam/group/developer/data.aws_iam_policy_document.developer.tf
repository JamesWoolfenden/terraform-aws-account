data "aws_iam_policy_document" "developer" {
  statement {
    sid = 1

    actions = [
      "iam:ListUsers",
      "iam:ListVirtualMFADevices",
    ]

    resources = ["*"]
  }

  statement {
    actions = [
      "iam:ListMFADevices",
    ]

    resources = [
      "arn:aws:iam::*:mfa/*",
      "arn:aws:iam::*:user/&{aws:username}",
    ]
  }

  statement {
    actions = [
      "iam:CreateVirtualMFADevice",
      "iam:DeleteVirtualMFADevice",
      "iam:EnableMFADevice",
      "iam:ResyncMFADevice",
    ]

    resources = [
      "arn:aws:iam::*:mfa/&{aws:username}",
      "arn:aws:iam::*:user/&{aws:username}",
    ]
  }

  statement {
    actions = [
      "iam:DeactivateMFADevice",
    ]

    resources = [
      "arn:aws:iam::*:mfa/&{aws:username}",
      "arn:aws:iam::*:user/&{aws:username}",
    ]

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }
  }

  statement {
    not_actions = [
      "iam:CreateVirtualMFADevice",
      "iam:EnableMFADevice",
      "iam:ListMFADevices",
      "iam:ListUsers",
      "iam:ListVirtualMFADevices",
      "iam:ResyncMFADevice",
    ]

    resources = ["*"]

    condition {
      test     = "BoolIfExists"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["false"]
    }
  }

  statement {
    sid = "CreateOwnAccessKeys"

    actions = [
      "iam:CreateAccessKey",
      "iam:GetUser",
      "iam:ListAccessKeys",
    ]

    resources = ["arn:aws:iam::*:user/&{aws:username}"]
  }
}
