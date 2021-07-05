# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

# crea un service principal y rellena los siguientes datos para autenticar
# provider "azurerm" {
#  features {}
#  subscription_id = "0b73c45e-7ac8-4136-ae30-ce1064834096"
#  client_id       = "25f5d46d-d067-43c9-93d9-2d1f6f026b7d"
#  client_secret   = "FIh.B5rs7.MWonmE.3Gz4x-tZXuHPxyb8b"
#  tenant_id       = "899789dc-202f-44b4-8472-a6d40f9eb440"
#}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

resource "azurerm_resource_group" "rg" {
    name     =  "kubernetes_rg"
    location = var.location

    tags = {
        environment = "CP2"
    }

}

# Storage account
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

resource "azurerm_storage_account" "stAccount" {
    name                     = var.storage_account                   # "staccountcp2" 
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "CP2"
    }

}
