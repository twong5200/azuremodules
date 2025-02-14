output "resource_group_name" {
  value = module.resource_group.name
}

output "vnet_name" {
  value = module.networking.vnet_name
}

output "subnet_ids" {
  value = module.networking.subnet_ids
}

output "gateway_public_ip" {
  value = module.gateway.public_ip_address
}
