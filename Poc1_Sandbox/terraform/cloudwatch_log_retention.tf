module "cloudwatch_logs_retention_sandbox" {
  source                = "../../shared_module/cloudwatch_log_retention"
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