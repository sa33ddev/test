# VPC
resource "google_compute_network" "vpc" {
  name                    = "c1-cp1-gke-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "c1-cp1-gke-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "172.16.94.0/24"
}