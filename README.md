# Project Horizon - Azure Landing Zone

[![Terraform CI](https://github.com/bordera-randy/Project-Horizon/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/bordera-randy/Project-Horizon/actions/workflows/terraform-ci.yml)
[![Test Examples](https://github.com/bordera-randy/Project-Horizon/actions/workflows/terraform-examples.yml/badge.svg)](https://github.com/bordera-randy/Project-Horizon/actions/workflows/terraform-examples.yml)

A comprehensive Terraform module for deploying Azure Landing Zones following Microsoft's Cloud Adoption Framework (CAF) best practices.

## 🎯 Project Overview

Project Horizon implements a production-ready Azure Landing Zone using Terraform, providing a solid foundation for enterprise cloud adoption. The module follows a milestone-based approach to incrementally build out the landing zone capabilities.

## 🛣️ Roadmap

### M0 – Inception & Scaffolding ✅
- [x] Repository structure and CI/CD pipeline
- [x] Basic Terraform module scaffolding
- [x] Documentation framework
- [x] Example configurations

### M1 – Governance & Identity 🚧
- [ ] Management Group hierarchy
- [ ] Role-Based Access Control (RBAC)
- [ ] Azure Policy baseline implementation
- [ ] Identity and access management

### M2 – Networking & Security 📋
- [ ] Virtual WAN (vWAN) configuration
- [ ] Virtual Hub deployment
- [ ] Azure Firewall integration
- [ ] Security and logging infrastructure

### M3 – Observability & Operations 📋
- [ ] Diagnostic settings
- [ ] Log Analytics workspace
- [ ] Budget and cost management
- [ ] Resource tagging standards

### M4 – Examples & Release 📋
- [ ] Reference environment templates
- [ ] Comprehensive documentation
- [ ] Version 1.0.0 release

## 🚀 Quick Start

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.5
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) >= 2.40
- An Azure subscription with appropriate permissions

### Basic Usage

```hcl
module "azure_landing_zone" {
  source = "github.com/bordera-randy/Project-Horizon"

  organization_name = "your-org"
  environment      = "prod"
  location         = "East US"

  tags = {
    Project     = "Azure-Landing-Zone"
    Environment = "production"
    Owner       = "Platform-Team"
  }
}
```

### Example Deployment

```bash
# Initialize Terraform
terraform init

# Review the planned changes
terraform plan

# Deploy the landing zone
terraform apply
```

## 📁 Repository Structure

```
.
├── README.md                   # This file
├── main.tf                     # Main module configuration
├── variables.tf                # Input variables
├── outputs.tf                  # Output definitions
├── terraform.tf                # Provider requirements
├── examples/                   # Usage examples
│   ├── basic/                  # Basic configuration example
│   └── advanced/               # Advanced configuration example
├── modules/                    # Sub-modules (future)
├── docs/                       # Documentation
└── .github/workflows/          # CI/CD pipelines
```

## 🔧 Configuration

### Required Variables

| Name | Description | Type |
|------|-------------|------|
| `organization_name` | Name of the organization | `string` |

### Optional Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|
| `environment` | Environment name | `string` | `"dev"` |
| `location` | Primary Azure region | `string` | `"East US"` |
| `enable_management_groups` | Enable management group creation | `bool` | `true` |

See [variables.tf](variables.tf) for the complete list of configurable options.

## 📖 Examples

- [Basic Example](examples/basic/) - Minimal configuration
- [Advanced Example](examples/advanced/) - Full feature set (Coming in M2)

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Workflow

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests: `terraform fmt && terraform validate`
5. Submit a pull request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- 📖 [Documentation](docs/)
- 🐛 [Issue Tracker](https://github.com/bordera-randy/Project-Horizon/issues)
- 💬 [Discussions](https://github.com/bordera-randy/Project-Horizon/discussions)

## 🙏 Acknowledgments

- Microsoft Cloud Adoption Framework
- Azure Landing Zone reference architectures
- Terraform Azure Provider community
