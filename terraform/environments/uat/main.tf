locals {
  db_secret = trimspace(file("D:/2026/Project-EmpProfApp/DockerDesktop-Local/employeeprofileapp/Secrets/db_secret.txt"))
}

module "namespace" {
  source = "../../modules/employee_namespace"

  namespace_name   = var.namespace_name
  namespace_labels = var.namespace_labels
}

module "governance" {
  source = "../../modules/employee_governance"

  namespace_name = module.namespace.namespace_name

  quota_limits = var.quota_limits

  limit_max = var.limit_max
  limit_min = var.limit_min

  limit_default         = var.limit_default
  limit_default_request = var.limit_default_request
}

module "rbac" {
  source = "../../modules/employee_rbac"

  namespace_name       = var.namespace_name
  service_account_name = var.service_account_name
  role_name            = var.role_name
  allowed_resources    = var.allowed_resources
  allowed_verbs        = var.allowed_verbs
}

module "secret" {
  source = "../../modules/employee_secret"

  namespace_name = var.namespace_name
  secret_name    = var.secret_name
  db_secret      = local.db_secret
}

module "employee_app" {
  source = "../../modules/employee_app"

  namespace_name   = var.namespace_name
  release_name     = var.release_name
  helm_chart_path  = var.helm_chart_path
  image_repository = var.image_repository
  image_tag        = var.image_tag
  replica_count    = var.replica_count
  service_type     = var.service_type
  node_port        = var.node_port
  service_port     = var.service_port
  environment      = var.environment

  depends_on = [
    module.namespace,
    module.rbac,
    module.governance,
    module.secret
  ]
}

module "ingress" {
  source = "../../modules/employee_ingress"

  namespace_name = var.namespace_name
  ingress_name   = var.ingress_name
  host           = var.ingress_host
  path           = var.ingress_path
  path_type      = var.ingress_path_type
  release_name   = var.release_name
}

module "employee_monitoring" {
  source = "../../modules/employee_monitoring"

  enable_monitoring = var.enable_monitoring
  environment       = var.environment
}