limit             = "2000.0"
time_period_start = "2020-01-01_00:00"
time_unit         = "MONTHLY"
budget = {
  name        = "budget-ec2-monthly"
  budget_type = "COST"
  time_unit   = "MONTHLY"
  limit_unit  = "USD"
}

notification = {
  comparison_operator        = "GREATER_THAN"
  threshold                  = 100
  threshold_type             = "PERCENTAGE"
  notification_type          = "FORECASTED"
  subscriber_email_addresses = ["james.woolfenden@gmail.com"]
}
