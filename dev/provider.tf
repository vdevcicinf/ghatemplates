terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.11.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "storageaccountvdevcic"
    container_name       = "vdecictest"
    key                  = "okr.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
