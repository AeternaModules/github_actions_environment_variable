resource "github_actions_environment_variable" "actions_environment_variables" {
  for_each = var.actions_environment_variables

  environment   = each.value.environment
  repository    = each.value.repository
  value         = each.value.value
  variable_name = each.value.variable_name
}

