variable project {
  description = "project name"
  default     = "project-kubernetes-331704"
}

variable region {
  description = "which region you want to create vm"
  default     = "us-west1"
}

variable zone {
  description = "which region you want to create vm"
  default     = "us-west1-b"
}

variable network_name{
    default = "elk-vpc"
}

variable machine_type{
     default = "n1-standard-4"
}

variable gce_image{
   default = "centos-7"
}

variable gce_image_1{
   default = "debian-cloud/debian-9"
}


variable machine_type_1{
     default = "n1-standard-1"
}

