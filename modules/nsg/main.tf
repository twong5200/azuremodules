resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.nsg_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_security_rule" "nsg_rule" {
  count                     = length(var.nsg_rules)
  name                      = var.nsg_rules[count.index].name
  priority                  = var.nsg_rules[count.index].priority
  direction                 = var.nsg_rules[count.index].direction
  access                    = var.nsg_rules[count.index].access
  protocol                  = var.nsg_rules[count.index].protocol
  source_port_range         = var.nsg_rules[count.index].source_port_range
  destination_port_range    = var.nsg_rules[count.index].destination_port_range
  source_address_prefix     = var.nsg_rules[count.index].source_address_prefix
  destination_address_prefix = var.nsg_rules[count.index].destination_address_prefix
  network_security_group_name = azurerm_network_security_group.nsg.name
}