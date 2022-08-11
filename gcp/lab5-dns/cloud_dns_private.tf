data "google_compute_network" "vpc_network" {
  name = "default"
}

module "dns-private-zone" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "3.0.0"
  project_id = var.project_id
  type       = "private"
  name       = "daredevil-private-com"
  domain     = "daredevil.com."

  private_visibility_config_networks = [
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/global/networks/${data.google_compute_network.vpc_network.name
}"
  ]

  recordsets = [
    {
      name = "_dmarc"
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-reports@daredevil.com",
      ]
    },

  ]
}