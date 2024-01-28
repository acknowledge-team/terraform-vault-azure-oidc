resource "vault_jwt_auth_backend" "oidc" {
  description  = var.oidc_backend_description
  type         = "oidc"
  path         = var.oidc_backend_path
  default_role = var.oidc_default_role

  oidc_client_id     = var.oidc_client_id
  oidc_client_secret = var.oidc_client_secret
  oidc_discovery_url = var.oidc_discovery_url
}