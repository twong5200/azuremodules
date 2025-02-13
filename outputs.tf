output "resource_group_name" {
  value = module.resource_group.rg_name
}

output "vnet_name" {
  value = module.virtual_network.vnet_name
}

output "nsg_name" {
  value = module.nsg.nsg_name
}

output "route_table_name" {
  value = module.route_table.route_table_name
}
