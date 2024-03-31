provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project
  region      = var.region
}

resource "google_container_cluster" "my_cluster" {
  name     = "my-cluster"
  location = var.region

  remove_default_node_pool = true

  initial_node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
}
