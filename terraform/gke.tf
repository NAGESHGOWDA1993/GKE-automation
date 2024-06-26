provider "google" {
  project     = var.project
  region      = var.region
}

resource "google_container_cluster" "my_cluster" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true

  initial_node_count  = 1
  deletion_protection = false
}

resource "google_container_node_pool" "general" {
  name       = "general"
  cluster    = google_container_cluster.my_cluster.id
  node_count = var.node_count

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = false
    machine_type = var.machine_type

    labels = {
      role = "general"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

