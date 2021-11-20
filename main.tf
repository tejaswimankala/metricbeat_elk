resource "google_compute_instance" "elastic-instance-1" {
  name = "elastic-instance-1"
  machine_type = var.machine_type
  
  zone = var.zone
  #allow_stopping_for_update = true
  tags = ["kibana"]
  boot_disk {
    initialize_params {
    image = var.gce_image
    size = 100
    }
}   
  #  scratch_disk {
  #   interface = "SCSI"
  # }
  

 
  network_interface {
    network = google_compute_network.elk-vpc.name
    subnetwork = google_compute_subnetwork.monitoring.name
    access_config {
      // Ephemeral IP
    }
 }

 metadata_startup_script = "${file("installelk.sh")}"
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
      }
}

resource "google_compute_instance" "elastic-instance-2" {
  name = "webserver-1"
  machine_type = var.machine_type_1

  
  zone = var.zone
  #allow_stopping_for_update = true
  tags = ["webserver", "http-server"]
   boot_disk {
    initialize_params {
    image = var.gce_image_1
    size = 10
    }
  }   
  #  scratch_disk {
  #   interface = "SCSI"
  # }

  

  network_interface {
    network = google_compute_network.elk-vpc.name
    subnetwork = google_compute_subnetwork.web-servers.name
    access_config {
      // Ephemeral IP
    }
 }
}

#  metadata_startup_script = "${file("metricbeat.sh")}"
#  service_account {
#     scopes = ["userinfo-email", "compute-ro", "storage-ro"]
#       }
# }


# resource "google_compute_instance" "elastic-instance-3" {
#   name = "webserver-2"
#   machine_type = var.machine_type_1
  
#   zone = var.zone
#   #allow_stopping_for_update = true
#   tags = ["webserver"]
#    boot_disk {
#     initialize_params {
#     image = var.gce_image_1
#     size = 100
#     }
#   }   
#    scratch_disk {
#     interface = "SCSI"
#   }
    
  

 
#   network_interface {
#     subnetwork = google_compute_subnetwork.web-servers.name
#     access_config {
#       // Ephemeral IP
#     }
#  }
     
#}



 
  


