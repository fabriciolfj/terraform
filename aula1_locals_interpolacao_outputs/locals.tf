locals {

  ip_filepath = "ips.json"

  common_tags = {
    Service     = "Curso terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Fabricio Jacob"
  }
}