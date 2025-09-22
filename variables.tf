# Core Configuration Variables
variable "organization_name" {
  description = "Name of the organization for resource naming"
  type        = string
  validation {
    condition     = length(var.organization_name) > 0 && length(var.organization_name) <= 50
    error_message = "Organization name must be between 1 and 50 characters."
  }
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod", "sandbox"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod, sandbox."
  }
}

variable "location" {
  description = "Primary Azure region for resources"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
  default = {
    Project     = "Project-Horizon"
    ManagedBy   = "Terraform"
    Environment = "dev"
  }
}

# Management Group Configuration
variable "management_group_prefix" {
  description = "Prefix for management group names"
  type        = string
  default     = "mg"
}

variable "enable_management_groups" {
  description = "Enable creation of management group hierarchy"
  type        = bool
  default     = true
}

# Subscription Configuration
variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = null
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
  default     = null
}

# Naming Configuration
variable "naming_convention" {
  description = "Naming convention configuration"
  type = object({
    prefix    = string
    separator = string
    suffix    = string
  })
  default = {
    prefix    = "alz"
    separator = "-"
    suffix    = ""
  }
}