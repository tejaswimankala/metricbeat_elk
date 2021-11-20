resource "google_compute_network" "elk-vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "monitoring" {
  name                     =  "monitoring"
  ip_cidr_range            = "192.168.1.0/24"
  network                  = google_compute_network.elk-vpc.self_link
  region                   = var.region
  #private_ip_google_access = true
}

resource "google_compute_subnetwork" "web-servers" {
  name                     = "webservers"
  ip_cidr_range            = "192.168.2.0/24"
  network                  = google_compute_network.elk-vpc.self_link
  region                   = var.region
  #private_ip_google_access = true
}

