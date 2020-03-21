module "cloudtrail" {
  source      = "JamesWoolfenden/cloudtrail/aws"
  version     = "0.0.3"
  common_tags = var.common_tags
  trail       = var.trail
}
