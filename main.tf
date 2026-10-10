resource "auth0_client_grant" "client_grants" {
  for_each = var.client_grants

  audience                    = each.value.audience
  allow_all_scopes            = each.value.allow_all_scopes
  allow_any_organization      = each.value.allow_any_organization
  authorization_details_types = each.value.authorization_details_types
  client_id                   = each.value.client_id
  default_for                 = each.value.default_for
  organization_usage          = each.value.organization_usage
  scopes                      = each.value.scopes
  subject_type                = each.value.subject_type
}

