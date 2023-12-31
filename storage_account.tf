module "storage_account" {
    source = "./storageaccount"

    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    name = "demo12"
    
    white_list_ip = ["157.48.67.54"]

    

    
    whitelist_subnet_ids = [azurerm_subnet.public_subnet.id]
}

resource "azurerm_storage_container" "container" {
  name                  = "demo"
  storage_account_name  = module.storage_account.storage_account_name
  container_access_type = "private"
  depends_on = [
    module.storage_account
  ]
}

resource "azurerm_storage_container" "container2" {
  name                  = "demo1"
  storage_account_name  = module.storage_account.storage_account_name
  container_access_type = "private"
  depends_on = [
    module.storage_account
  ]
}