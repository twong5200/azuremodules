variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_location" {
  description = "Location of the Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}

variable "subnets" {
  description = "List of subnets"
  type        = list(object({
    name           = string
    address_prefix = string
  }))
}

variable "create_gateway_subnet" {
  description = "Create Gateway Subnet"
  type        = bool
  default     = false
}
