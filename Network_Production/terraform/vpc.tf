module "vpc_network_production" {
  source  = "Codzs-Architecture/vpc-impl/aws"
  version = "0.0.10"

  account_customizations_name = "${local.account_customizations_name}"
}