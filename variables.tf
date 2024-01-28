variable "oidc_backend_description" {
    description = "OIDC backend description"
    default = "Main oidc authentication backend"
    type = string
}

variable "oidc_backend_path" {
    description = "OIDC backend mount path"
    default = "oidc"
    type = string
}

variable "oidc_default_role" {
    description = "Default oidc role"
    default = "oidc-default" # using an oidc default role to map default pol
    type = string
}

variable "oidc_client_id" {
    description = "Azure OIDC client ID"
    type = string
}

variable "oidc_client_secret" {
    description = "Azure OIDC client secret"
    type = string
}

variable "oidc_discovery_url" {
    description = "Azure OIDC discovery url"
    type = string
}

variable "user_claim" {
  description = "User claim to use for user mapping"
  type = string
  default = "sub"
}

variable "groups_claim" {
  description = "Groups claims to use for group mapping"
  type = string
  default = "groups"
}

variable "allowed_redirect_uris" {
 description = "OIDC allowed redirect uris"
 type = list
}