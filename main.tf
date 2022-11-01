locals {
  prefix     = "terraform-backend-fano"
  ssm_prefix = "/me/fano/terraform/backend"
  common_tags = {
    Project   = "Terraform Backend"
    ManagedBy = "terraform"
  }
}
