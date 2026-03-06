variable "namespace_name" {
  description = "Full namespace name"
  type        = string
}

variable "namespace_labels" {
  description = "Labels for namespace"
  type        = map(string)
  default     = {}
}