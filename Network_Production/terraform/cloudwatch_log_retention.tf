module "cloudwatch_logs_retention_network_nonproduction001" {
  source  = "Codzs-Architecture/cloudwatch-log-retention/aws"
  version = "0.0.3"
  
  retention_days_target = 30
  retention_days_min    = 30
  retention_days_max    = 90
  discover_regions      = "false"
  # dry_run               = "false"
  # regex_match           = ""
  # regex_exclude         = "^$"
  schedule_expression   = "rate(23 hours)"
  delete_empty_days     = 600
  environment           = "prod"
}