output "network_security_rules" {
  description = "All network_security_rule resources"
  value       = azurerm_network_security_rule.network_security_rules
}
output "network_security_rules_access" {
  description = "List of access values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.access]
}
output "network_security_rules_description" {
  description = "List of description values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.description]
}
output "network_security_rules_destination_address_prefix" {
  description = "List of destination_address_prefix values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.destination_address_prefix]
}
output "network_security_rules_destination_address_prefixes" {
  description = "List of destination_address_prefixes values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.destination_address_prefixes]
}
output "network_security_rules_destination_application_security_group_ids" {
  description = "List of destination_application_security_group_ids values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.destination_application_security_group_ids]
}
output "network_security_rules_destination_port_range" {
  description = "List of destination_port_range values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.destination_port_range]
}
output "network_security_rules_destination_port_ranges" {
  description = "List of destination_port_ranges values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.destination_port_ranges]
}
output "network_security_rules_direction" {
  description = "List of direction values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.direction]
}
output "network_security_rules_name" {
  description = "List of name values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.name]
}
output "network_security_rules_network_security_group_name" {
  description = "List of network_security_group_name values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.network_security_group_name]
}
output "network_security_rules_priority" {
  description = "List of priority values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.priority]
}
output "network_security_rules_protocol" {
  description = "List of protocol values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.protocol]
}
output "network_security_rules_resource_group_name" {
  description = "List of resource_group_name values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.resource_group_name]
}
output "network_security_rules_source_address_prefix" {
  description = "List of source_address_prefix values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.source_address_prefix]
}
output "network_security_rules_source_address_prefixes" {
  description = "List of source_address_prefixes values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.source_address_prefixes]
}
output "network_security_rules_source_application_security_group_ids" {
  description = "List of source_application_security_group_ids values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.source_application_security_group_ids]
}
output "network_security_rules_source_port_range" {
  description = "List of source_port_range values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.source_port_range]
}
output "network_security_rules_source_port_ranges" {
  description = "List of source_port_ranges values across all network_security_rules"
  value       = [for k, v in azurerm_network_security_rule.network_security_rules : v.source_port_ranges]
}

