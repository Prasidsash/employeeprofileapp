variable "namespace_name" {
  description = "Namespace where secret will be created"
  type        = string
}

variable "secret_name" {
  description = "Name of the Kubernetes secret"
  type        = string
}

variable "db_secret" {
  description = "Database password"
  type        = string
}