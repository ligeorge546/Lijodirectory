provider "azurerm"{
   version     = "~>1.38.0"
    client_id   = "d701f16b-bc15-4ae3-b6bd-afba2b5b16a3"
    client_secret   = ".O0Z27h0~~-bdFh3nAT-M_7L-zv3RNOPkf"
    tenant_id   = "7219b637-1ae4-4711-b5ad-a7a2827a7a9d"
    subscription_id = "a38f6e33-2b42-4d94-ab1a-d8aaa0afb87f"
}

module "StorageAccount" {
source = "./StorageAccount/"
resource_name = "account31245678567"
location = "westus"
resource_group_name ="test34"
#tags ="demo"
}
