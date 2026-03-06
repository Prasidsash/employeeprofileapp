resource "kubernetes_service_account_v1" "app_sa" {
  metadata {
    name      = var.service_account_name
    namespace = var.namespace_name
  }
}

resource "kubernetes_role_v1" "app_role" {
  metadata {
    name      = var.role_name
    namespace = var.namespace_name
  }

  rule {
    api_groups = [""]
    resources  = var.allowed_resources
    verbs      = var.allowed_verbs
  }
}

resource "kubernetes_role_binding_v1" "app_binding" {
  metadata {
    name      = "${var.role_name}-binding"
    namespace = var.namespace_name
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "Role"
    name      = var.role_name
  }

  subject {
    kind      = "ServiceAccount"
    name      = var.service_account_name
    namespace = var.namespace_name
  }
}