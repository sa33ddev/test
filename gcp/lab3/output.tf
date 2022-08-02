output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"

}

output "gke_cluster_name" {
  value       = google_container_cluster.cluster.name
  description = "GKE Cluster Name"
}


output "region" {
  value = var.region
}

output "zone" {
  value = var.zone
}