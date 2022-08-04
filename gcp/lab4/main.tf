
data "google_compute_network" "vpc_network" {
  name = "default"
}

module "firewall_rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  project_id   = var.project_id
  network_name = data.google_compute_network.vpc_network.name

  rules = [{
    name                    = "test-firewall"
    description             = null
    direction               = "INGRESS"
    priority                = null
    ranges                  = ["12.14.16.0/24"]
    source_tags             = null
    source_service_accounts = null
    target_tags             = null
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      ports    = ["22"]
    }]
    deny = []
    log_config = null
/*  #if it's defined, log will be enabled 
    log_config ={
      metadata = "INCLUDE_ALL_METADATA"
    } */
  }]
}