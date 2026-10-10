output "client_grants_id" {
  description = "Map of id values across all client_grants, keyed the same as var.client_grants except keys with no id are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.id if v.id != null && length(v.id) > 0 }
}
output "client_grants_allow_all_scopes" {
  description = "Map of allow_all_scopes values across all client_grants, keyed the same as var.client_grants except keys with no allow_all_scopes are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.allow_all_scopes if v.allow_all_scopes != null }
}
output "client_grants_allow_any_organization" {
  description = "Map of allow_any_organization values across all client_grants, keyed the same as var.client_grants except keys with no allow_any_organization are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.allow_any_organization if v.allow_any_organization != null }
}
output "client_grants_audience" {
  description = "Map of audience values across all client_grants, keyed the same as var.client_grants except keys with no audience are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.audience if v.audience != null && length(v.audience) > 0 }
}
output "client_grants_authorization_details_types" {
  description = "Map of authorization_details_types values across all client_grants, keyed the same as var.client_grants except keys with no authorization_details_types are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.authorization_details_types if v.authorization_details_types != null && length(v.authorization_details_types) > 0 }
}
output "client_grants_client_id" {
  description = "Map of client_id values across all client_grants, keyed the same as var.client_grants except keys with no client_id are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "client_grants_default_for" {
  description = "Map of default_for values across all client_grants, keyed the same as var.client_grants except keys with no default_for are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.default_for if v.default_for != null && length(v.default_for) > 0 }
}
output "client_grants_is_system" {
  description = "Map of is_system values across all client_grants, keyed the same as var.client_grants except keys with no is_system are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.is_system if v.is_system != null }
}
output "client_grants_organization_usage" {
  description = "Map of organization_usage values across all client_grants, keyed the same as var.client_grants except keys with no organization_usage are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.organization_usage if v.organization_usage != null && length(v.organization_usage) > 0 }
}
output "client_grants_scopes" {
  description = "Map of scopes values across all client_grants, keyed the same as var.client_grants except keys with no scopes are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "client_grants_subject_type" {
  description = "Map of subject_type values across all client_grants, keyed the same as var.client_grants except keys with no subject_type are omitted"
  value       = { for k, v in auth0_client_grant.client_grants : k => v.subject_type if v.subject_type != null && length(v.subject_type) > 0 }
}

