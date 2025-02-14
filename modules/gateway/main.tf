resource "azurerm_public_ip" "gateway" {
  name                = "${var.vnet_name}-gateway-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
  tags                = var.tags
}

resource "azurerm_virtual_network_gateway" "main" {
  name                = "${var.vnet_name}-gateway"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags

  type     = var.gateway_type
  vpn_type = var.vpn_type

  active_active = false
  enable_bgp    = false
  sku           = var.sku

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = azurerm_public_ip.gateway.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.gateway_subnet_id
  }
}