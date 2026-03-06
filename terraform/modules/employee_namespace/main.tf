resource "kubernetes_namespace_v1" "employee_ns" {
  metadata {
    name   = var.namespace_name
    labels = var.namespace_labels
  }
}