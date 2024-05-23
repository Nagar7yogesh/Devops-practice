provider "google" {
  project     = "dealofday-398415"
  region      = "us-central1-a"
}

resource "google_compute_instance" "my_instance" {
  name         = "my-vm-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
