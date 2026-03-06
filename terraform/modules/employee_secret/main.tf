resource "kubernetes_secret" "db_secret" {
  metadata {
    name      = var.secret_name
    namespace = var.namespace_name
  }

  data = {
    DB_PASSWORD = base64encode(var.db_secret)
  }

  type = "Opaque"
}