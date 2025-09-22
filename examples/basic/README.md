# Basic Azure Landing Zone Example

This example demonstrates the minimal configuration required to deploy the Azure Landing Zone module.

## Features Demonstrated

- Basic resource group creation
- Standard naming conventions
- Common tagging strategy
- Management group enablement

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Plan the deployment:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

## Configuration

This example creates:
- Identity resource group
- Management resource group  
- Connectivity resource group

All resources are tagged with standard metadata and follow the naming convention pattern.

## Customization

You can customize the deployment by modifying the variables in `main.tf`:
- `organization_name`: Your organization identifier
- `environment`: Target environment (dev, staging, prod)
- `location`: Azure region for deployment
- `tags`: Additional resource tags