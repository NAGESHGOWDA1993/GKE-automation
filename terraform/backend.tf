terraform {
 backend "gcs" {
   bucket  = "gke_state"
   prefix  = "terraform/state"
 }
}
