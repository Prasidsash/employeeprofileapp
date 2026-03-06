variable "enable_monitoring" {
  type = bool
}

variable "environment" {
  description = "Environment name (dev, qa, uat, prod)"
  type        = string
}