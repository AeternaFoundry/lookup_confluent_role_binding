variable "role_binding_lookup" {
  description = <<EOT
Map of role_binding_lookup, attributes below
Required:
    - id
EOT

  type = map(object({
    id = string
  }))
}

