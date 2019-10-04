data "aws_iam_policy_document" "serverless" {
  statement {
    actions = [
      "cloudformation:ListExports",
      "cloudformation:DescribeStackDriftDetectionStatus",
      "cloudformation:DetectStackDrift",
      "cloudformation:ListStackSetOperations",
      "cloudformation:ListStackInstances",
      "cloudformation:DescribeStackResource",
      "cloudformation:ListStackSetOperationResults",
      "cloudformation:DetectStackResourceDrift",
      "cloudformation:EstimateTemplateCost",
      "cloudformation:DescribeStackEvents",
      "cloudformation:DescribeStackSetOperation",
      "cloudformation:DescribeAccountLimits",
      "cloudformation:DescribeChangeSet",
      "cloudformation:ListStackResources",
      "cloudformation:ListStacks",
      "cloudformation:ListImports",
      "cloudformation:DescribeStackInstance",
      "cloudformation:DescribeStackResources",
      "cloudformation:GetTemplateSummary",
      "cloudformation:DescribeStacks",
      "cloudformation:DescribeStackResourceDrifts",
      "cloudformation:GetStackPolicy",
      "cloudformation:DescribeStackSet",
      "cloudformation:ListStackSets",
      "cloudformation:GetTemplate",
      "cloudformation:ListChangeSets",
      "cloudformation:DeleteChangeSet",
      "cloudformation:DeleteStack",
      "cloudformation:DeleteStackInstances",
      "cloudformation:DeleteStackSet",
      "cloudformation:UpdateStack",
      "cloudformation:UpdateStackInstances",
      "cloudformation:UpdateStackSet",
      "cloudformation:ValidateTemplate"
    ]

    resources = ["*"]
  }

  statement {
    actions = ["cloudformation:CreateStack"]
    resources = ["arn:aws:cloudformation:eu-west-2:${data.aws_caller_id.current.account_id}:stack/*",
    "arn:aws:cloudformation:us-east-1:${data.aws_caller_id.current.account_id}:stack/*"]

  }

  statement {
    actions   = ["s3:*"]
    resources = ["*"]
  }

  statement {
    actions   = ["lambda:CreateFunction"]
    resources = ["*"]
  }

  statement {
    actions = ["apigateway:*", ]
    resources = ["arn:aws:apigateway:us-east-1::/restapis",
      "arn:aws:apigateway:eu-west-2::/restapis",
      "arn:aws:apigateway:eu-west-2::/restapis/*",
    ]
  }

  statement {
    actions = ["iam:GetRole"]
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "logs:DescribeLogGroups",
    "logs:CreateLogGroup"]
    resources = ["*"]
  }
}
