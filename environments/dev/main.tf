module "resource_group" {
  source              = "../../modules/resource-group"
  resource_group_name = "rg-dev-fazal"
  location            = "East US"
}

module "networking" {
  source              = "../../modules/networking"
  resource_group_name = module.resource_group.resource_group_name
  location            = "East US"

  vnet_name           = "vnet-dev-fazal"
  subnet_name         = "subnet-dev-fazal"
  address_space       = ["10.0.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24"]
}

module "security" {
  source              = "../../modules/security"
  resource_group_name = module.resource_group.resource_group_name
  location            = "East US"

  nsg_name            = "nsg-dev-fazal"
}

module "virtual_machine" {
  source              = "../../modules/virtual-machine"

  resource_group_name = module.resource_group.resource_group_name
  location            = "East US"

  vm_name             = "vm-dev-fazal"
  admin_username      = "azureuser"

  subnet_id           = module.networking.subnet_id
  nsg_id              = module.security.nsg_id
}