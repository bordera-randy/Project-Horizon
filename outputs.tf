# Management Group Outputs
output "management_groups" {
  description = "Information about created management groups"
  value = var.enable_management_groups ? {
    root_id       = local.root_management_group_id
    platform      = local.platform_management_group_id
    landing_zones = local.landing_zones_management_group_id
  } : {}
}

# Resource Group Outputs
output "resource_groups" {
  description = "Information about created resource groups"
  value = {
    identity     = try(azurerm_resource_group.identity[0].name, null)
    management   = try(azurerm_resource_group.management[0].name, null)
    connectivity = try(azurerm_resource_group.connectivity[0].name, null)
  }
}

# Naming Outputs
output "naming_convention" {
  description = "Applied naming convention"
  value = {
    prefix    = var.naming_convention.prefix
    separator = var.naming_convention.separator
    suffix    = var.naming_convention.suffix
    pattern   = "${var.naming_convention.prefix}${var.naming_convention.separator}%s${var.naming_convention.separator}${var.environment}${var.naming_convention.suffix}"
  }
}

# Common Tags
output "common_tags" {
  description = "Common tags applied to resources"
  value       = local.common_tags
}

# Subscription Information
output "subscription_info" {
  description = "Subscription information"
  value = {
    subscription_id = data.azurerm_client_config.current.subscription_id
    tenant_id       = data.azurerm_client_config.current.tenant_id
  }
}