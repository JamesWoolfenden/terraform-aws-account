module "budget" {
  source            = "JamesWoolfenden/budget/aws"
  version           = "0.3.32"
  limit             = var.limit
  time_period_start = var.time_period_start
  budget            = var.budget
  notification      = var.notification
  cost_filters      = null
}
