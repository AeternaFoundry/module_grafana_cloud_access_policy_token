resource "grafana_cloud_access_policy_token" "cloud_access_policy_tokens" {
  for_each = var.cloud_access_policy_tokens

  access_policy_id = each.value.access_policy_id
  name             = each.value.name
  region           = each.value.region
  display_name     = each.value.display_name
  expires_at       = each.value.expires_at
}

