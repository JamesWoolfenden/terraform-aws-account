module "cloudtrail" {
  source      = "JamesWoolfenden/cloudtrail/aws"
  version     = "0.1.9"
  common_tags = var.common_tags
  trail       = var.trail
}
