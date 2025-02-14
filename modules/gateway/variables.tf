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

variable "gateway_subnet_id" {
  description = "ID of the gateway subnet"
  type        = string
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

variable "sku" {
  description = "SKU of the Virtual Network Gateway"
  type        = string
  default     = "VpnGw1"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}