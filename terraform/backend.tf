terraform {
 backend "gcs" {
   bucket  = "gke_tf_state"
   prefix  = "terraform/state"
 }
}
