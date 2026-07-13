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
  # --- Unconfirmed validation candidates, derived from azurerm_network_security_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validation.StringDoesNotContainAny(...) - no translation rule yet, add one
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: description
  #   condition: length(value) >= 0 && length(value) <= 140
  #   message:   must be between 0 and 140 characters
  # path: protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: access
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: priority
  #   condition: value >= 100 && value <= 4096
  #   message:   must be between 100 and 4096
  # path: direction
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

