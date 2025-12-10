terraform{
backend "azurerm" {
    resource_group_name  = "tfstateRG"
    storage_account_name = "stracccmain12395"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}