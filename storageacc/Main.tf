variable "client_id" {}
variable "client_secret" {}
provider "azurerm"{
   version     = "~>1.38.0"
    client_id   = var.client_id
    client_secret   = var.client_secret
    tenant_id   = "7219b637-1ae4-4711-b5ad-a7a2827a7a9d"
    subscription_id = "aa487c88-6c1b-449f-8cd0-43f8c066a086"
}

module "StorageAccount" {
source = "./StorageAccount/"
resource_name = "account546834563"
location = "westus"
resource_group_name ="test"
#tags ="demo"
}
