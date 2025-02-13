variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "nsg_location" {
  description = "Location of the Network Security Group"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
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
  default = []
}