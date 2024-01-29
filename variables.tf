variable "oidc_backend_description" {
  description = "OIDC backend description"
  default     = "Main oidc authentication backend"
  type        = string
}

variable "oidc_backend_path" {
  description = "OIDC backend mount path"
  default     = "oidc"
  type        = string
}

variable "oidc_default_role" {
  description = "Default oidc role"
  default     = "oidc-default" # using an oidc default role to map default pol
  type        = string
}

variable "oidc_client_id" {
  description = "Azure OIDC client ID"
  type        = string
}

variable "oidc_client_secret" {
  description = "Azure OIDC client secret"
  type        = string
}

variable "oidc_discovery_url" {
  description = "Azure OIDC discovery url"
  type        = string
}

variable "user_claim" {
  description = "User claim to use for user mapping"
  type        = string
  default     = "email"
}

variable "groups_claim" {
  description = "Groups claims to use for group mapping"
  type        = string
  default     = "groups"
}

variable "allowed_redirect_uris" {
  description = "OIDC allowed redirect uris"
  type        = list(any)
}

variable "teams" {
  description = "A map containing teams"
  type        = map(any) 
}

variable "policy_name" {
  description = "The name of the policy associated to oidc role"
  type = list()
}

variable "azure_group_id" {
  description = "The object id of azure group associated to the oidc role"
  type = string
}

variable "verbose_oidc_logging" {
  description = "Enable verbose oidc logging"
  default     = false
}