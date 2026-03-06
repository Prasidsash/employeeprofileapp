output "namespace_name" {
  value = kubernetes_namespace_v1.employee_ns.metadata[0].name
}