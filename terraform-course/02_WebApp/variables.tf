variable "resource_group_name" {
    default = "example-resources"
    type = string
    description = "RG name in azure"
}

variable "resource_group_location" {
    default = "East US"
    type = string
    description = "RG location in azure"
}

variable "app_service_plan_name" {
    default = "example-appserviceplan"
    type = string
    description = "App Service Plan Service in Azure"
}

variable "app_service_name" {
    default = "example-app-service68"
    type = string
    description = "App Service name in Azure"
}


