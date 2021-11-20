resource "google_compute_firewall" "firewall-1" {
  name    = "allow-ssh"
  network = google_compute_network.elk-vpc.name

  
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
   source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "firewall-2" {
  name    = "allow-http-icmp"
  network = google_compute_network.elk-vpc.name
   allow {
    protocol = "icmp"
  }

  
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

   target_tags = ["webserver"]
   source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "firewall-3" {
  name    = "allow-kibana"
  network = google_compute_network.elk-vpc.name

  
  allow {
    protocol = "tcp"
    ports    = ["5601"]
  }

   target_tags = ["kibana"]
   source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "firewall-4" {
  name    = "allow-internal"
  network = google_compute_network.elk-vpc.name

  
  allow {
    protocol = "all"
    
  }
 
   source_ranges = ["192.168.1.0/24" , "192.168.2.0/24"]
}

resource "google_compute_firewall" "firewall-5" {
  name    = "allow-http"
  network = google_compute_network.elk-vpc.name
   

  
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

   target_tags = ["http-server"]
   source_ranges = ["0.0.0.0/0"]
}