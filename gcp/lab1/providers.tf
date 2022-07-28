provider "google" {
  credentials = file("../../key-test-tf.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}