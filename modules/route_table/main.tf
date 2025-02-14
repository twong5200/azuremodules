resource "azurerm_route_table" "rt" {
  name                = var.route_table_name
  location           = var.location
  resource_group_name = var.resource_group_name
  tags               = var.tags

  route {
    name                   = "internet"
    address_prefix         = "0.0.0.0/0"
    next_hop_type         = "Internet"
  }
}