resource "vault_identity_group" "group" {
    for_each = var.teams
  name     = each.key 
  type     = "external"
  policies = each.key 
}

resource "vault_identity_group_alias" "group_alias" {
    for_each = var.teams
  name           = each.value 
  mount_accessor = vault_jwt_auth_backend.oidc.accessor
  canonical_id   = vault_identity_group.group[each.key].id
}