module "vpc_network_non_production" {
  source  = "Codzs-Architecture/vpc-impl/aws"
  version = "0.0.9"

  account_customizations_name = "${local.account_customizations_name}"
}