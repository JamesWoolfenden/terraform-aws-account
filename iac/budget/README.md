# Budgets

This Template implements billing alerts on your AWS account.

The Budgets are defined in the file **budget.auto.tfvars**:

```json
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

```

The variable limit creates 2 sets of alerts one at its setting and another at half.
Additional users or groups can added to _subscriber_email_addresses_.

This project is bound to Terraform cloud and a workspace with **terraform.tf**.
