environment = "uat"

# Namespace
namespace_name = "employeeprofileapp-uat"

namespace_labels = {
  environment = "uat"
  app         = "employeeprofileapp"
}

# Governance
quota_limits = {
  pods              = "3"
  "requests.cpu"    = "500m"
  "requests.memory" = "512Mi"
  "limits.cpu"      = "1"
  "limits.memory"   = "1Gi"
}

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

# RBAC
service_account_name = "employee-sa"
role_name            = "employee-role"
allowed_resources    = ["pods", "services", "secrets", "configmaps"]
allowed_verbs        = ["get", "list", "watch"]

# Secret
secret_name = "employee-db-secret"

# Application
release_name     = "employeeprofileapp-uat"
helm_chart_path  = "../../../helm/app-chart"
image_repository = "employeeprofileapp"
image_tag        = "v1"
replica_count    = 1
service_type     = "NodePort"
node_port        = 30502
service_port     = 80

# Ingress
ingress_name      = "employee-ingress"
ingress_host      = "uat.employee.local"
ingress_path      = "/"
ingress_path_type = "Prefix"

# Monitoring
enable_monitoring = false