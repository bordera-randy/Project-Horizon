# Azure Landing Zone Main Configuration
# This is the main entry point for the Azure Landing Zone module

# Get current Azure context
data "azurerm_client_config" "current" {}

# Local values for consistent naming and tagging
locals {
  # Naming convention
  name_prefix = var.naming_convention.prefix
  name_suffix = var.naming_convention.suffix
  separator   = var.naming_convention.separator

  # Management Group IDs (placeholder for future implementation)
  root_management_group_id          = "${local.name_prefix}${local.separator}root"
  platform_management_group_id      = "${local.name_prefix}${local.separator}platform"
  landing_zones_management_group_id = "${local.name_prefix}${local.separator}landing-zones"

  # Common tags
  common_tags = merge(
    var.tags,
    {
      Environment  = var.environment
      Organization = var.organization_name
      DeployedBy   = "terraform"
      LastModified = timestamp()
    }
  )

  # Resource naming
  resource_group_names = {
    identity     = "${local.name_prefix}${local.separator}identity${local.separator}${var.environment}${local.name_suffix}"
    management   = "${local.name_prefix}${local.separator}management${local.separator}${var.environment}${local.name_suffix}"
    connectivity = "${local.name_prefix}${local.separator}connectivity${local.separator}${var.environment}${local.name_suffix}"
  }
}

# Core Resource Groups for Azure Landing Zone
# These will be expanded in future milestones

# Identity Resource Group - for identity-related resources
resource "azurerm_resource_group" "identity" {
  count    = var.enable_management_groups ? 1 : 0
  name     = local.resource_group_names.identity
  location = var.location
  tags     = local.common_tags
}

# Management Resource Group - for management and governance resources
resource "azurerm_resource_group" "management" {
  count    = var.enable_management_groups ? 1 : 0
  name     = local.resource_group_names.management
  location = var.location
  tags     = local.common_tags
}

# Connectivity Resource Group - for networking and connectivity resources
resource "azurerm_resource_group" "connectivity" {
  count    = var.enable_management_groups ? 1 : 0
  name     = local.resource_group_names.connectivity
  location = var.location
  tags     = local.common_tags
}

# Placeholder for future milestone implementations
# M1 - Management Groups and RBAC will be implemented here
# M2 - Networking and Security resources will be implemented here
# M3 - Observability and Operations resources will be implemented here