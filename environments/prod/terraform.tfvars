resource_group_name = "rg-prod-fazal"
location            = "East US"

vnet_name       = "vnet-prod-fazal"
address_space   = ["10.1.0.0/16"]

subnet_name     = "subnet-prod-fazal"
subnet_prefixes = ["10.1.1.0/24"]

nsg_name        = "nsg-prod-fazal"

vm_name         = "vm-prod-fazal"
admin_username = "azureuser"