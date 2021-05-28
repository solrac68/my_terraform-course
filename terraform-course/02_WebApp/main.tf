provider "azurerm" {
  version = "=2.36.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  # name     = "example-resources"
  # location = "East US"
  name = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_app_service_plan" "example" {
  # name                = "example-appserviceplan"
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "example" {
  # name                = "example-app-service68"
  name                = var.app_service_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}