terraform {
  backend "azurerm" {
    resource_group_name  = "bgdemo-rg"
    storage_account_name = "bgdemostate"
    container_name       = "tfstate"
    key                  = "blue-green-aks.tfstate"
  }
}
