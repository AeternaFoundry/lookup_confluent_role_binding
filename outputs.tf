output "role_binding_lookup_crn_pattern" {
  description = "Map of crn_pattern values across all role_binding_lookup, keyed the same as var.role_binding_lookup except keys with no crn_pattern are omitted"
  value       = { for k, v in data.confluent_role_binding.role_binding_lookup : k => v.crn_pattern if v.crn_pattern != null && length(v.crn_pattern) > 0 }
}
output "role_binding_lookup_id" {
  description = "Map of id values across all role_binding_lookup, keyed the same as var.role_binding_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_role_binding.role_binding_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_binding_lookup_principal" {
  description = "Map of principal values across all role_binding_lookup, keyed the same as var.role_binding_lookup except keys with no principal are omitted"
  value       = { for k, v in data.confluent_role_binding.role_binding_lookup : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "role_binding_lookup_role_name" {
  description = "Map of role_name values across all role_binding_lookup, keyed the same as var.role_binding_lookup except keys with no role_name are omitted"
  value       = { for k, v in data.confluent_role_binding.role_binding_lookup : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}

