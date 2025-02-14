resource_group_name = "example-rg"
location           = "eastus"
vnet_name          = "example-vnet"
address_space      = ["10.0.0.0/16"]
subnet_prefixes    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.0.0/27"]
subnet_names       = ["web", "app", "db", "GatewaySubnet"]

tags = {
  Environment = "Development"
  Project     = "Example"
}
