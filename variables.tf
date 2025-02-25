variable "resource_group_name_1" {
  type    = string
  default = "myResourceGroup1"
}

variable "resource_group_name_2" {
  type    = string
  default = "myResourceGroup2"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "vnet_name" {
  type    = string
  default = "myVnet"
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnets" {
  type = list(object({
    name          = string
    address_prefix = string
  }))
  default = [
    {
      name          = "subnet1"
      address_prefix = "10.0.1.0/24"
    },
    {
      name          = "subnet2"
      address_prefix = "10.0.2.0/24"
    },
    {
      name          = "subnet3"
      address_prefix = "10.0.3.0/24"
    },
     {
      name          = "subnet4"
      address_prefix = "10.0.4.0/24"
    }
  ]
}

variable "nsg_name" {
  type    = string
  default = "myNSG"
}

variable "route_table_name" {
  type    = string
  default = "myRouteTable"
}