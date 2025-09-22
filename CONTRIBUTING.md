# Contributing to Project Horizon

Thank you for your interest in contributing to Project Horizon! This document provides guidelines and information for contributors.

## 🌟 How to Contribute

### Reporting Issues

- Use the [issue tracker](https://github.com/bordera-randy/Project-Horizon/issues) to report bugs
- Search existing issues before creating a new one
- Provide detailed information including:
  - Terraform version
  - Azure provider version
  - Steps to reproduce
  - Expected vs actual behavior

### Suggesting Enhancements

- Open an issue with the "enhancement" label
- Describe the proposed feature and its benefits
- Include examples of how it would be used

### Code Contributions

1. **Fork the repository**
   ```bash
   git clone https://github.com/your-username/Project-Horizon.git
   cd Project-Horizon
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes**
   - Follow the coding standards below
   - Add tests for new functionality
   - Update documentation as needed

4. **Test your changes**
   ```bash
   # Format code
   terraform fmt -recursive
   
   # Validate configuration
   terraform validate
   
   # Test examples
   cd examples/basic
   terraform init -backend=false
   terraform validate
   ```

5. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add new feature description"
   ```

6. **Push and create a pull request**
   ```bash
   git push origin feature/your-feature-name
   ```

## 📋 Development Guidelines

### Code Standards

- **Terraform Style**: Follow [Terraform style conventions](https://www.terraform.io/docs/language/syntax/style.html)
- **Naming**: Use clear, descriptive names for resources and variables
- **Comments**: Document complex logic and provide context
- **Variables**: Include descriptions and validation rules where appropriate

### File Organization

```
module/
├── main.tf          # Primary resource definitions
├── variables.tf     # Input variable declarations
├── outputs.tf       # Output value declarations
├── terraform.tf     # Provider requirements
├── locals.tf        # Local value definitions (if needed)
└── README.md        # Module documentation
```

### Documentation Standards

- Update README.md for any new features
- Document all variables and outputs
- Provide usage examples
- Keep documentation current with code changes

### Testing Requirements

- Validate Terraform syntax: `terraform validate`
- Format code: `terraform fmt`
- Test examples work as expected
- Ensure security scans pass

## 🔄 Pull Request Process

1. **PR Title**: Use conventional commit format
   - `feat:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation changes
   - `refactor:` for code refactoring

2. **PR Description**: Include
   - What changes were made
   - Why the changes were necessary
   - How to test the changes
   - Links to related issues

3. **Review Process**
   - All PRs require review before merging
   - Address feedback promptly
   - Ensure CI/CD checks pass

## 🧪 Testing

### Local Testing

```bash
# Format check
terraform fmt -check -recursive

# Validate syntax
terraform validate

# Security scan (requires tfsec)
tfsec .

# Test examples
cd examples/basic
terraform init -backend=false
terraform plan
```

### CI/CD Pipeline

The project uses GitHub Actions for:
- Terraform formatting and validation
- Security scanning with Trivy
- Example testing
- Documentation generation

## 📚 Resources

- [Terraform Documentation](https://www.terraform.io/docs/)
- [Azure Provider Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Microsoft Cloud Adoption Framework](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/)
- [Azure Landing Zone Architecture](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/landing-zone/)

## 📞 Getting Help

- Open an issue for questions
- Join our discussions
- Review existing documentation

## 🏆 Recognition

Contributors will be recognized in:
- Repository contributors list
- Release notes for significant contributions
- Project documentation

Thank you for helping make Project Horizon better! 🚀