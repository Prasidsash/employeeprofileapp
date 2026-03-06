resource "kubernetes_ingress_v1" "employee_ingress" {

  metadata {
    name      = var.ingress_name
    namespace = var.namespace_name
  }

  spec {
    ingress_class_name = "nginx"

    rule {
      host = var.host

      http {
        path {
          path      = var.path
          path_type = var.path_type

          backend {
            service {
              name = "${var.release_name}-employeeprofileapp"

              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}