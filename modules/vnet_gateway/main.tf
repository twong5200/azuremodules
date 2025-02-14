resource "azurerm_public_ip" "gateway_ip" {
  name                = "${var.gateway_name}-ip"
  location           = var.location
  resource_group_name = var.resource_group_name
  allocation_method  = "Dynamic"
  tags               = var.tags
}

resource "azurerm_virtual_network_gateway" "gateway" {
  name                = var.gateway_name
  location           = var.location
  resource_group_name = var.resource_group_name
  tags               = var.tags

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "VpnGw1"

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id         = azurerm_public_ip.gateway_ip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                    = var.gateway_subnet_id
  }
}