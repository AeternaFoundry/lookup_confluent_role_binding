data "confluent_role_binding" "role_binding_lookup" {
  for_each = var.role_binding_lookup

  id = each.value.id
}

