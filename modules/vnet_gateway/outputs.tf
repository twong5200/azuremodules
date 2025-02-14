output "gateway_id" {
  value = azurerm_virtual_network_gateway.gateway.id
}

output "gateway_public_ip" {
  value = azurerm_public_ip.gateway_ip.ip_address
}
