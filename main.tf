module "resource_group" {
  source              = "./modules/resource_group"
  rg_name             = var.rg_name
  rg_location         = var.rg_location
  module "virtual_network" {
  source              = "./modules/virtual_network"
  vnet_name           = var.vnet_name
  vnet_location       = module.resource_group.rg_location
  vnet_address_space  = var.vnet_address_space
  subnets             = var.subnets
  create_gateway_subnet = var.create_gateway_subnet
 }
}

module "nsg" {
  source              = "./modules/nsg"
  nsg_name            = var.nsg_name
  nsg_location        = module.resource_group.rg_location
  nsg_rules           = var.nsg_rules
}

module "route_table" {
  source              = "./modules/route_table"
  route_table_name    = var.route_table_name
  route_table_location = module.resource_group.rg_location
  routes              = var.routes
}