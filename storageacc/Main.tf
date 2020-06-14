variable "client_id" {}
variable "client_secret" {}
provider "azurerm"{
   #version     = "~>1.38.0"
    client_id   = var.client_id
    client_secret   = var.client_secret
    tenant_id   = "7219b637-1ae4-4711-b5ad-a7a2827a7a9d"
    subscription_id = "a38f6e33-2b42-4d94-ab1a-d8aaa0afb87f"
}

resource "azurerm_resource_group" "demo" {
   name = "demo"
   location = "West US"
}

module "StorageAccount" {
source = "./StorageAccount/"
resource_name = "account31245678567"
location = "westus"
resource_group_name ="test"
#tags ="demo"
}
