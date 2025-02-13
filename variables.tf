variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "rg_location" {
  description = "Location of the Resource Group"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
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

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "nsg_rules" {
  description = "List of NSG Rules"
  type        = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "route_table_name" {
  description = "Name of the Route Table"
  type        = string
}

variable "routes" {
  description = "List of Routes"
  type        = list(object({
    name                   = string
    address_prefix         = string
    next_hop_type          = string
  }))
}
