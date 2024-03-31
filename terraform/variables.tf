variable "project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the GKE nodes"
  type        = string
}

variable "node_count" {
  description = "Initial number of nodes in the GKE cluster"
  type        = number
}

