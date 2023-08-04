

resource "azurerm_role_assignment" "storage" {
    scope = module.storage_account.storage_account_id

    # using azure defined role
    role_definition_name = "Reader"

    principal_id = module.vm.vm_pricipal_id
}


resource "azurerm_role_assignment" "container" {
    scope = azurerm_storage_container.container2.resource_manager_id

    # using azure defined role
    # role_definition_name = "Storage Blob Data Contributor"
    role_definition_name = "Reader"
    principal_id = module.vm.vm_pricipal_id
}

