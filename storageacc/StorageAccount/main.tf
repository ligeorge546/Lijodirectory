resource "azurerm_storage_account" "storage_account" {
  name                = var.resource_name
  location            = var.location
  resource_group_name = var.resource_group_name

  account_kind             = var.account_kind
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  access_tier = var.access_tier

  enable_blob_encryption    = var.enable_blob_encryption
  enable_file_encryption    = var.enable_file_encryption
  enable_https_traffic_only = var.enable_https_traffic_only

  account_encryption_source = var.account_encryption_source

  dynamic "custom_domain" {
    for_each = var.custom_domain == null ? [] : [var.custom_domain]

    content {
      name = custom_domain.value.name
    }
  }


}
