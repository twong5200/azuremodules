variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "Address prefixes for subnets"
  type        = list(string)
}

variable "subnet_names" {
  description = "Names of the subnets"
  type        = list(string)
}

variable "gateway_subnet_prefix" {
  description = "Address prefix for the gateway subnet"
  type        = string
  default     = "10.0.255.0/24"
}

variable "gateway_type" {
  description = "Type of the Virtual Network Gateway (Vpn or ExpressRoute)"
  type        = string
  default     = "Vpn"
}

variable "vpn_type" {
  description = "Type of VPN Gateway (RouteBased or PolicyBased)"
  type        = string
  default     = "RouteBased"
}

variable "gateway_sku" {
  description = "SKU of the Virtual Network Gateway"
  type        = string
  default     = "VpnGw1"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}