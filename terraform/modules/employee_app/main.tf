resource "helm_release" "employee_app" {
  name      = var.release_name
  namespace = var.namespace_name
  chart     = "${path.module}/../../../helm/app-chart"

  timeout = 600
  wait    = false
  atomic  = false

  set {
    name  = "image.repository"
    value = var.image_repository
  }

  set {
    name  = "image.tag"
    value = var.image_tag
  }

  set {
    name  = "replicaCount"
    value = var.replica_count
  }

  set {
    name  = "service.type"
    value = var.service_type
  }

  set {
    name  = "service.nodePort"
    value = var.node_port
  }

  set {
    name  = "service.port"
    value = var.service_port
  }

  # 👇 Consolidated: propagate environment into Helm values
  set {
    name  = "environment"
    value = var.environment
  }
}