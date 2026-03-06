resource "kubernetes_namespace_v1" "monitoring" {
  count = var.enable_monitoring ? 1 : 0

  metadata {
    name = "monitoring-${var.environment}"
  }
}

resource "helm_release" "prometheus" {
  count = var.enable_monitoring ? 1 : 0

  name       = "kube-prometheus-${var.environment}"
  namespace  = "monitoring-${var.environment}"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  version    = "82.4.3"

  timeout = 600
  wait    = true
  atomic  = true
}