variable "credentials_file" {
  description = "Path to the service account JSON file"
  type        = string
}

variable "project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the GKE nodes"
  type        = string
  default     = "n1-standard-2"
}

variable "node_count" {
  description = "Initial number of nodes in the GKE cluster"
  type        = number
  default     = 3
}

variable "disk_size_gb" {
  description = "Disk size in GB for each node in the GKE cluster"
  type        = number
  default     = 100
}
