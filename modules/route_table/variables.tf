variable "route_table_name" {
  description = "Name of the Route Table"
  type        = string
}

variable "route_table_location" {
  description = "Location of the Route Table"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "routes" {
  description = "List of Routes"
  type        = list(object({
    name            = string
    address_prefix  = string
    next_hop_type   = string
  }))
  default = []
}
