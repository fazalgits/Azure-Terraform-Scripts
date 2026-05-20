module "resource_group" {
  source              = "../../modules/resource-group"
  resource_group_name = "rg-prod-fazal"
  location            = "East US 2"
}

module "networking" {
  source              = "../../modules/networking"
  resource_group_name = module.resource_group.resource_group_name
  location            = "East US 2"

  vnet_name           = "vnet-prod-fazal"
  subnet_name         = "subnet-prod-fazal"
  address_space       = ["10.1.0.0/16"]
  subnet_prefixes     = ["10.1.1.0/24"]
}

module "security" {
  source              = "../../modules/security"
  resource_group_name = module.resource_group.resource_group_name
  location            = "East US 2"

  nsg_name            = "nsg-prod-fazal"
}

module "virtual_machine" {
  source              = "../../modules/virtual-machine"

  resource_group_name = module.resource_group.resource_group_name
  location            = "East US 2"

  vm_name             = "vm-prod-fazal"
  admin_username      = "azureuser"

  subnet_id           = module.networking.subnet_id
  nsg_id              = module.security.nsg_id
}