output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "subnet_id" {
  value = module.networking.subnet_id
}

output "nsg_id" {
  value = module.security.nsg_id
}