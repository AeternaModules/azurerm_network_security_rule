variable "network_security_rules" {
  description = <<EOT
Map of network_security_rules, attributes below
Required:
    - access
    - direction
    - name
    - network_security_group_name
    - priority
    - protocol
    - resource_group_name
Optional:
    - description
    - destination_address_prefix
    - destination_address_prefixes
    - destination_application_security_group_ids
    - destination_port_range
    - destination_port_ranges
    - source_address_prefix
    - source_address_prefixes
    - source_application_security_group_ids
    - source_port_range
    - source_port_ranges
EOT

  type = map(object({
    access                                     = string
    direction                                  = string
    name                                       = string
    network_security_group_name                = string
    priority                                   = number
    protocol                                   = string
    resource_group_name                        = string
    source_application_security_group_ids      = optional(set(string))
    source_address_prefixes                    = optional(set(string))
    source_address_prefix                      = optional(string)
    destination_port_ranges                    = optional(set(string))
    destination_address_prefix                 = optional(string)
    destination_application_security_group_ids = optional(set(string))
    destination_address_prefixes               = optional(set(string))
    source_port_range                          = optional(string)
    description                                = optional(string)
    destination_port_range                     = optional(string)
    source_port_ranges                         = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_security_rules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_security_rules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_security_rules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_security_rules : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 140)
      )
    ])
    error_message = "must be between 0 and 140 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_security_rules : (
        v.priority >= 100 && v.priority <= 4096
      )
    ])
    error_message = "must be between 100 and 4096"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

