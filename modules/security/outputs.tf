output "nsg_id" {
  value = azurerm_network_security_group.main.id
}

output "route_table_id" {
  value = azurerm_route_table.main.id
}