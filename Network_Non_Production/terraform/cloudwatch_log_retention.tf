module "cloudwatch_logs_retention_network_nonproduction001" {
  source  = "Codzs-Architecture/cloudwatch-log-retention/aws"
  version = "0.0.5"
  
  retention_days_target = 1
  retention_days_min    = 1
  retention_days_max    = 7
  discover_regions      = "false"
  # dry_run               = "false"
  # regex_match           = ""
  # regex_exclude         = "^$"
  schedule_expression   = "rate(23 hours)"
  delete_empty_days     = 600
  environment           = "np"

  # subnet_ids  = concat(module.vpc_network_non_production.vpc_network_non_production_workload.private_subnets,
  #                       module.vpc_network_non_production.vpc_network_non_production_workload.public_subnets,
  #                       module.vpc_network_non_production.vpc_network_non_production_workload.database_subnets)
  # security_group_ids = tolist([module.vpc_network_non_production.vpc_network_non_production_workload.default_security_group_id])
}