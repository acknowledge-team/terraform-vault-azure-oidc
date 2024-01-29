resource "vault_identity_group" "group" {
  name     = var.team 
  type     = "external"
  policies = var.policy_name 
}

resource "vault_identity_group_alias" "group_alias" {
  name           = var.azure_group_id 
  mount_accessor = vault_jwt_auth_backend.oidc.accessor
  canonical_id   = vault_identity_group.group.id
}