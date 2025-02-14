output "vnet_name" {
  value = azurerm_virtual_network.main.name
}

output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_ids" {
  value = azurerm_subnet.subnets[*].id
}

output "gateway_subnet_id" {
  value = azurerm_subnet.gateway.id
}
