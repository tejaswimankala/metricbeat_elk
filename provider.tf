provider "google" {
  credentials = "${file("credentials.json")}"
  project     = var.project
  region      = "us-central1"
  zone = "us-central1-a"
}
