terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "networking" {
  source              = "./modules/networking"
  resource_group_name = module.resource_group.name
  location           = module.resource_group.location
  vnet_name          = var.vnet_name
  address_space      = var.address_space
  subnet_prefixes    = var.subnet_prefixes
  subnet_names       = var.subnet_names
  tags               = var.tags

  depends_on = [module.resource_group]
}

module "security" {
  source              = "./modules/security"
  resource_group_name = module.resource_group.name
  location           = module.resource_group.location
  vnet_name          = module.networking.vnet_name
  subnet_ids         = module.networking.subnet_ids
  tags               = var.tags

  depends_on = [module.networking]
}

module "gateway" {
  source              = "./modules/gateway"
  resource_group_name = module.resource_group.name
  location           = module.resource_group.location
  vnet_name          = module.networking.vnet_name
  gateway_subnet_id   = module.networking.gateway_subnet_id
  tags               = var.tags

  depends_on = [module.networking]
}
