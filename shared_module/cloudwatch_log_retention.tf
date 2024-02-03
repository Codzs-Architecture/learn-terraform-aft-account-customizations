module "cloudwatch_logs_retention" {
  project_name          = "cloudwatch_logs_retention"
  source                = "git::https://github.com/Codzs-Architecture/iac-aws-cloudwatch-log-retention.git"
  # providers             = { aws = aws.use1 }
  retention_days_target = 90
  retention_days_min    = 30
  retention_days_max    = 400
  discover_regions      = "false"
  # dry_run               = "false"
  # regex_match           = ""
  # regex_exclude         = "^$"
  schedule_expression   = "rate(23 hours)"
  delete_empty_days     = 600
}