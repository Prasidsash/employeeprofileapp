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
# ResourceQuota + LimitRange
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

variable "release_name" {
  type = string
}

# =====================
# MONITORING
# =====================
variable "enable_monitoring" {
  type = bool
}