provider "azurerm" {
  
  features {
        
           }

           /*
 client_id = "129d9ebf-70d0-4caf-b27c-aa35924ce0fe"
 client_secret = "pmv8Q~wVfHrAiQz8r2x.Fb6KuMmzIxvZW6~FEbZc"
 tenant_id = "bc48d484-77e3-4df8-b4d6-c24f5cde17cb"
 subscription_id = "ab321fe7-054d-4a32-844b-4ff79d16240b"
    */
    client_id = "ff574c2d-8d9d-403c-8b8d-b33c2a68fcda"
    client_secret ="BIf8Q~Y6q0ELbHDL0jTjz8pmJhlKySkMPbvVGdbR"
    tenant_id = "bc48d484-77e3-4df8-b4d6-c24f5cde17cb"
    subscription_id = "ab321fe7-054d-4a32-844b-4ff79d16240b"


}


terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "2.88.1"
    }
  }
}
