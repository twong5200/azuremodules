output "gateway_id" {
  value = azurerm_virtual_network_gateway.main.id
}

output "public_ip_address" {
  value = azurerm_public_ip.gateway.ip_address
}