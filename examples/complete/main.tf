module "vpc" {
  source     = "../../"
  cidr_block = "10.255.0.0/16"
  name       = "example"

  public_subnet_cidr_blocks  = ["10.255.20.0/24", "10.255.21.0/24"]
  public_availability_zones  = ["ap-northeast-1a", "ap-northeast-1c"]
  private_subnet_cidr_blocks = ["10.255.84.0/24", "10.255.85.0/24"]
  private_availability_zones = ["ap-northeast-1a", "ap-northeast-1c"]
  peer_vpc_id                = ["vpc-y35erg", "vpc-3574uehrgs"]

  instance_tenancy        = "default"
  enable_dns_support      = false
  enable_dns_hostnames    = false
  map_public_ip_on_launch = false

  enabled_nat_gateway        = true
  enabled_single_nat_gateway = false

  tags = {
    Environment = "prod"
  }
}
