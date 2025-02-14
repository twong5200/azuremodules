provider "azurerm" {
  features {}
}

module "resource_group_1" {
  source = "./modules/resource_group"
  resource_group_name = var.resource_group_name_1
  location = var.location
}

module "resource_group_2" {
  source = "./modules/resource_group"
  resource_group_name = var.resource_group_name_2
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group_1.resource_group_name
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnets             = var.subnets
  location            = var.location
}

module "nsg" {
  source              = "./modules/nsg"
  resource_group_name = module.resource_group_1.resource_group_name
  nsg_name            = var.nsg_name
  location            = var.location
}

module "route_table" {
  source              = "./modules/route_table"
  resource_group_name = module.resource_group_1.resource_group_name
  route_table_name    = var.route_table_name
  location            = var.location
}