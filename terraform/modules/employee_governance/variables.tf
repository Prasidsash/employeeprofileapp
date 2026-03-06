variable "namespace_name" {
  description = "Namespace where governance policies apply"
  type        = string
}

variable "quota_limits" {
  description = "Resource quota limits for the namespace"
  type        = map(string)
}

variable "limit_max" {
  description = "Maximum allowed resource limits for containers"
  type        = map(string)
}

variable "limit_min" {
  description = "Minimum required resource limits for containers"
  type        = map(string)
}

variable "limit_default" {
  description = "Default resource limits applied to containers if not specified"
  type        = map(string)
}

variable "limit_default_request" {
  description = "Default resource requests applied to containers if not specified"
  type        = map(string)
}