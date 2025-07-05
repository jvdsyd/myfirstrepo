terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

features {}
subscription_id = "325754cd-a12c-48d9-921b-eb17c173bd01"

}


resource "azurerm_resource_group" "Javed" {
  name     = "RG_jvd"
  location = "West Europe"
}


resource "azurerm_storage_account" "stjaved" {
    # Create a storage account in the resource group
  name                     = "sgjaved"
  resource_group_name      = "RG_jvd"
  location                 = "west europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
