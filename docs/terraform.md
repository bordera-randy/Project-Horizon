# Terraform Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.connectivity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.management](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Name of the organization for resource naming | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name (e.g., dev, staging, prod) | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | Primary Azure region for resources | `string` | `"East US"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Common tags to be applied to all resources | `map(string)` | <pre>{<br>  "Environment": "dev",<br>  "ManagedBy": "Terraform",<br>  "Project": "Project-Horizon"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_common_tags"></a> [common\_tags](#output\_common\_tags) | Common tags applied to resources |
| <a name="output_management_groups"></a> [management\_groups](#output\_management\_groups) | Information about created management groups |
| <a name="output_naming_convention"></a> [naming\_convention](#output\_naming\_convention) | Applied naming convention |
| <a name="output_resource_groups"></a> [resource\_groups](#output\_resource\_groups) | Information about created resource groups |
| <a name="output_subscription_info"></a> [subscription\_info](#output\_subscription\_info) | Subscription information |
<!-- END_TF_DOCS -->