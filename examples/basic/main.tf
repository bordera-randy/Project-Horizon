# Basic Azure Landing Zone Example
# This example demonstrates the minimal configuration required

terraform {
  required_version = ">= 1.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Call the Azure Landing Zone module
module "azure_landing_zone" {
  source = "../../"

  organization_name = "contoso"
  environment       = "dev"
  location          = "East US"

  # Enable management groups for this example
  enable_management_groups = true

  # Custom tags
  tags = {
    Project     = "Project-Horizon"
    Environment = "development"
    Owner       = "Platform Team"
    CostCenter  = "IT-001"
  }
}

# Output key information
output "landing_zone_info" {
  description = "Information about the deployed landing zone"
  value = {
    management_groups = module.azure_landing_zone.management_groups
    resource_groups   = module.azure_landing_zone.resource_groups
    subscription_info = module.azure_landing_zone.subscription_info
  }
}