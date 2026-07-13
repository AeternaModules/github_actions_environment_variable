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
  # --- Unconfirmed validation candidates, derived from github_actions_environment_variable's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: variable_name
  #   source:    validateSecretNameFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

