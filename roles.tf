# A default role to map default policy for everyone
resource "vault_jwt_auth_backend_role" "default" {
  backend        = vault_jwt_auth_backend.oidc.path 
  role_name      = var.oidc_default_role
  token_policies = ["default"] 
 
  user_claim            = var.user_claim
  groups_claim          = var.groups_claim
  allowed_redirect_uris = var.allowed_redirect_uris
  oidc_scopes           = ["https://graph.microsoft.com/.default"] 
  role_type             = "oidc"
}

# All others roles are defined with below resource declaration