variable "namespace_name" {
  description = "Namespace where RBAC applies"
  type        = string
}

variable "service_account_name" {
  description = "Service account name"
  type        = string
}

variable "role_name" {
  description = "Role name"
  type        = string
}

variable "allowed_resources" {
  description = "Allowed Kubernetes resources"
  type        = list(string)
}

variable "allowed_verbs" {
  description = "Allowed verbs"
  type        = list(string)
}