variable "cloud_access_policy_tokens" {
  description = <<EOT
Map of cloud_access_policy_tokens, attributes below
Required:
    - access_policy_id
    - name
    - region
Optional:
    - display_name
    - expires_at
EOT

  type = map(object({
    access_policy_id = string
    name             = string
    region           = string
    display_name     = optional(string)
    expires_at       = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

