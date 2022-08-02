provider "google" {
  credentials = file("../../${var.key_name}")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}