provider "google" {
  credentials = file("../../${var.key_name}")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

provider "kubernetes" {
    config_path = "~/.kube/config"
    token = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth[0].cluster_ca_certificate)
  
}