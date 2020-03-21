module "inspector" {
  source        = "jameswoolfenden/inspector/aws"
  version       = "0.0.5"
  common_tags   = var.common_tags
  rule          = var.rule
  template_name = var.template_name
  target_name   = var.target_name
  duration      = var.duration
  package_arns  = data.aws_inspector_rules_packages.rules.arns
}
