# =====================
# ENVIRONMENT
# =====================
variable "environment" {
  type = string
}

# =====================
# NAMESPACE
# =====================
variable "namespace_name" {
  type = string
}

variable "namespace_labels" {
  type = map(string)
}

# =====================
# GOVERNANCE
# =====================
variable "quota_limits" {
  type = map(string)
}

variable "limit_max" {
  type = map(string)
}

variable "limit_min" {
  type = map(string)
}

variable "limit_default" {
  type = map(string)
}

variable "limit_default_request" {
  type = map(string)
}

# =====================
# RBAC
# =====================
variable "service_account_name" {
  type = string
}

variable "role_name" {
  type = string
}

variable "allowed_resources" {
  type = list(string)
}

variable "allowed_verbs" {
  type = list(string)
}

# =====================
# SECRET
# =====================
variable "secret_name" {
  type      = string
  sensitive = true
  default   = ""
}

# =====================
# APPLICATION
# =====================
variable "release_name" {
  type = string
}

variable "helm_chart_path" {
  type = string
}

variable "image_repository" {
  type = string
}

variable "image_tag" {
  type = string
}

variable "replica_count" {
  type = number
}

variable "service_type" {
  type = string
}

variable "node_port" {
  type = number
}

variable "service_port" {
  type = number
}

# =====================
# INGRESS
# =====================
variable "ingress_name" {
  type = string
}

variable "ingress_host" {
  type = string
}

variable "ingress_path" {
  type = string
}

variable "ingress_path_type" {
  type = string
}

# =====================
# MONITORING
# =====================
variable "enable_monitoring" {
  type = bool
}