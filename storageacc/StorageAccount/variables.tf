variable "resource_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "account_kind" { default = "StorageV2" }
variable "account_tier" { default = "Standard" }
variable "account_replication_type" { default = "LRS" }
variable "access_tier" { default = "hot" }
variable "enable_blob_encryption" { default = "true" }
variable "enable_file_encryption" { default = "true" }
variable "enable_https_traffic_only" { default = "true" }
variable "account_encryption_source" { default = "Microsoft.Storage" }
variable "custom_domain" { default = null }
variable "network_rules" { default = null }
variable "tags" { default = "" }
variable "retention_policy_days" { default = 7 }
