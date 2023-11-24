# TERRAFORM-MODULE-WORKSPACE


## Overview

This project uses Terraform to create EC2 instances on AWS in three different environments: development (dev), staging (stage), and production (prod). The project leverages Terraform workspaces and modules to manage infrastructure across multiple environments.

## Prerequisites

Before you begin, ensure you have the following prerequisites installed and configured:

- [Terraform](https://www.terraform.io/downloads.html)
- AWS CLI configured with the necessary access credentials

## Project Structure

The project is organized as follows:

- **main.tf**: Main Terraform configuration file defining the AWS provider, variables, and the EC2 instance module.
- **variables.tf**: File containing Terraform variables used to customize the EC2 instances.
- **modules/**: Directory containing the Terraform module for creating EC2 instances.

## Terraform Workspaces

The project utilizes Terraform workspaces to manage infrastructure for different environments. Three workspaces are created: `dev`, `stage`, and `prod`.

Switch between workspaces using the following Terraform commands:

```bash
# Switch to the dev workspace
terraform workspace select dev

# Switch to the stage workspace
terraform workspace select stage

# Switch to the prod workspace
terraform workspace select prod
```

## EC2 Instances

The EC2 instances are created with three different instance types based on the environment:

- **Development (dev):** t2.nano
- **Staging (stage):** t2.micro
- **Production (prod):** t2.large

Adjust the instance types in the `variables.tf` file if needed.

## How to Use

Follow these steps to deploy the infrastructure:

1. Clone this repository:

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Select the desired workspace:

   ```bash
   terraform workspace select dev
   ```

4. Review the Terraform plan:

   ```bash
   terraform plan
   ```

5. Apply the Terraform configuration:

   ```bash
   terraform apply
   ```

6. Confirm the changes when prompted.

## Cleanup

To destroy the created infrastructure, run:

```bash
terraform destroy
```

## Contributing

Feel free to contribute to this project by opening issues or submitting pull requests.

