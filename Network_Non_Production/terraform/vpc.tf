module "vpc_network_non_production" {
  source  = "Codzs-Architecture/vpc-impl/aws"
  version = "0.0.1"

  account = "Network_Non_Production"
}