variable "actions_environment_variables" {
  description = <<EOT
Map of actions_environment_variables, attributes below
Required:
    - environment
    - repository
    - value
    - variable_name
EOT

  type = map(object({
    environment   = string
    repository    = string
    value         = string
    variable_name = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

