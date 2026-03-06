variable "namespace_name" {
  type = string
}

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

variable "environment" {
  type        = string
  description = "Deployment environment (dev, qa, uat, prod)"
}