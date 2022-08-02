variable "gke_num_nodes" {
  default     = 3
  description = "num of gke nodes"

}

resource "google_container_cluster" "cluster" {

  name     = var.cluster_name
  location = var.region

  #cannot create cluster with no node pool,
  #to separately manage node pool, create and delete
  remove_default_node_pool = true
  initial_node_count = var.gke_num_nodes

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
}

#separately managed node pool
resource "google_container_node_pool" "c1-cp1_nodes" {
  name       = "${google_container_cluster.cluster.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.cluster.name
  node_count = var.gke_num_nodes

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = var.project_id
    }

    # preemtible = true
    machine_type = "e2-micro"
    tags         = ["gke-node", "${var.project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

