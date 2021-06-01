# get terraform version
terraform version
# Terraform v0.13.5

# get terraform commands
terraform

# init terraform's Azure provider (main.tf)
terraform init

# display the terraform template
cat main.tf

# plan and preview terraform changes
terraform plan

# Override variables
terraform plan -var "resource_group_name=MY_RG"

 + resource "azurerm_resource_group" "example" {
      + id       = (known after apply)
      + location = "eastus"
      + name     = "MY_RG"
    }


# deploy terraform infra
terraform apply

# destroy infra
terraform destroy