
resource "google_compute_firewall" "http-rule" {
  name        = "firewall-http-access"
  network     = "default"
  description = "the firewall to allow http/https access to tagged instances"

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  target_tags = ["http-server"]

}

data "google_compute_default_service_account" "default" {


}

resource "google_compute_instance" "my-vm" {
  name         = var.instance_name
  machine_type = "e2-micro"

  #would allow http access
  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  metadata_startup_script = <<EOF
sudo apt-get update
sudo apt-get install apache2 -y
sudo a2ensite default-ssl
sudo a2enmod ssl
sudo service apache2 restart
echo '<!doctype html><html><body><h1> ${var.region}, ${var.zone}::${var.instance_name},</h1></body></html>' | sudo tee /var/www/html/index.html
EOF  

  network_interface {
    network = "default"

    #an empty access config block would assign an external ip addr.
    access_config {

    }
  }

  #to allow changing machine type, service account, etc.
  allow_stopping_for_update = true

  service_account {
    email  = data.google_compute_default_service_account.default.email
    scopes = ["cloud-platform"]
  }

}