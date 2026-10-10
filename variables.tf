variable "client_grants" {
  description = <<EOT
Map of client_grants, attributes below
Required:
    - audience
Optional:
    - allow_all_scopes
    - allow_any_organization
    - authorization_details_types
    - client_id
    - default_for
    - organization_usage
    - scopes
    - subject_type
EOT

  type = map(object({
    audience                    = string
    allow_all_scopes            = optional(bool)
    allow_any_organization      = optional(bool)
    authorization_details_types = optional(list(string))
    client_id                   = optional(string)
    default_for                 = optional(string)
    organization_usage          = optional(string)
    scopes                      = optional(list(string))
    subject_type                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.client_grants : (
        v.scopes == null || (alltrue([for x in v.scopes : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.client_grants : (
        v.organization_usage == null || (contains([for v in ["allow", "deny", "require"] : lower(v)], lower(v.organization_usage)))
      )
    ])
    error_message = "must be one of: \"allow\", \"deny\", \"require\""
  }
  validation {
    condition = alltrue([
      for k, v in var.client_grants : (
        v.subject_type == null || (contains([for v in ["client", "user", "anonymous_user"] : lower(v)], lower(v.subject_type)))
      )
    ])
    error_message = "must be one of: \"client\", \"user\", \"anonymous_user\""
  }
  validation {
    condition = alltrue([
      for k, v in var.client_grants : (
        v.authorization_details_types == null || (alltrue([for x in v.authorization_details_types : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.client_grants : (
        v.default_for == null || (contains(["third_party_clients"], v.default_for))
      )
    ])
    error_message = "must be one of: \"third_party_clients\""
  }
}

