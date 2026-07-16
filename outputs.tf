output "network_security_rules_id" {
  description = "Map of id values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_security_rules_access" {
  description = "Map of access values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.access if v.access != null && length(v.access) > 0 }
}
output "network_security_rules_description" {
  description = "Map of description values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_security_rules_destination_address_prefix" {
  description = "Map of destination_address_prefix values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.destination_address_prefix if v.destination_address_prefix != null && length(v.destination_address_prefix) > 0 }
}
output "network_security_rules_destination_address_prefixes" {
  description = "Map of destination_address_prefixes values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.destination_address_prefixes if v.destination_address_prefixes != null && length(v.destination_address_prefixes) > 0 }
}
output "network_security_rules_destination_application_security_group_ids" {
  description = "Map of destination_application_security_group_ids values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.destination_application_security_group_ids if v.destination_application_security_group_ids != null && length(v.destination_application_security_group_ids) > 0 }
}
output "network_security_rules_destination_port_range" {
  description = "Map of destination_port_range values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.destination_port_range if v.destination_port_range != null && length(v.destination_port_range) > 0 }
}
output "network_security_rules_destination_port_ranges" {
  description = "Map of destination_port_ranges values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.destination_port_ranges if v.destination_port_ranges != null && length(v.destination_port_ranges) > 0 }
}
output "network_security_rules_direction" {
  description = "Map of direction values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "network_security_rules_name" {
  description = "Map of name values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_security_rules_network_security_group_name" {
  description = "Map of network_security_group_name values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.network_security_group_name if v.network_security_group_name != null && length(v.network_security_group_name) > 0 }
}
output "network_security_rules_priority" {
  description = "Map of priority values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.priority if v.priority != null }
}
output "network_security_rules_protocol" {
  description = "Map of protocol values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "network_security_rules_resource_group_name" {
  description = "Map of resource_group_name values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "network_security_rules_source_address_prefix" {
  description = "Map of source_address_prefix values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.source_address_prefix if v.source_address_prefix != null && length(v.source_address_prefix) > 0 }
}
output "network_security_rules_source_address_prefixes" {
  description = "Map of source_address_prefixes values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.source_address_prefixes if v.source_address_prefixes != null && length(v.source_address_prefixes) > 0 }
}
output "network_security_rules_source_application_security_group_ids" {
  description = "Map of source_application_security_group_ids values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.source_application_security_group_ids if v.source_application_security_group_ids != null && length(v.source_application_security_group_ids) > 0 }
}
output "network_security_rules_source_port_range" {
  description = "Map of source_port_range values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.source_port_range if v.source_port_range != null && length(v.source_port_range) > 0 }
}
output "network_security_rules_source_port_ranges" {
  description = "Map of source_port_ranges values across all network_security_rules, keyed the same as var.network_security_rules"
  value       = { for k, v in azurerm_network_security_rule.network_security_rules : k => v.source_port_ranges if v.source_port_ranges != null && length(v.source_port_ranges) > 0 }
}

