environment = "prod"

# ---------------------
# Namespace
# ---------------------
namespace_name = "employeeprofileapp-prod"

namespace_labels = {
  environment = "prod"
  app         = "employeeprofileapp"
}

# ---------------------
# Governance
# ResourceQuota
# ---------------------
quota_limits = {
  pods              = "10"
  "requests.cpu"    = "2"
  "requests.memory" = "2Gi"
  "limits.cpu"      = "4"
  "limits.memory"   = "4Gi"
}

# ---------------------
# LimitRange
# ---------------------
limit_max = {
  cpu    = "1"
  memory = "1Gi"
}

limit_min = {
  cpu    = "100m"
  memory = "128Mi"
}

limit_default = {
  cpu    = "1"
  memory = "1Gi"
}

limit_default_request = {
  cpu    = "1"
  memory = "1Gi"
}

# ---------------------
# RBAC
# ---------------------
service_account_name = "employee-sa"

role_name = "employee-role"

allowed_resources = [
  "pods",
  "services",
  "secrets",
  "configmaps"
]

allowed_verbs = [
  "get",
  "list",
  "watch"
]

# ---------------------
# Secret
# ---------------------
secret_name = "employee-db-secret"

# ---------------------
# Ingress
# ---------------------
ingress_name = "employee-ingress"

ingress_host = "prod.employee.local"

ingress_path = "/"

ingress_path_type = "Prefix"

# Helm release name (used by ingress routing)
release_name = "employeeprofileapp-prod"

# ---------------------
# Monitoring
# ---------------------
enable_monitoring = false