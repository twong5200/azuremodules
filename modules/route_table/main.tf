resource "azurerm_route_table" "rt" {
  name                = var.route_table_name
  location            = var.route_table_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_route" "route" {
  count               = length(var.routes)
  name                = var.routes[count.index].name
  address_prefix      = var.routes[count.index].address_prefix
  next_hop_type       = var.routes[count.index].next_hop_type
  route_table_name    = azurerm_route_table.rt.name
  resource_group_name = var.resource_group_name
}