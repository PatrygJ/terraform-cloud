terraform {
  cloud {
    organization = "growe-vmki"

    workspaces {
      name = "workspace-dev"
    }

    required_providers {
      azurerm = {
        source  = "hashicorp/azurerm"
        version = "3.41.0"
      }
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}
