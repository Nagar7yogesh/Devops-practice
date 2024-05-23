provider "google" {
  project     = "dealofday-398415"
  region      = "asia-south1"
}

resource "google_compute_instance" "my_instance" {
  name         = "my-vm-instance"
  machine_type = "e2-micro"
  zone         = "asia-south1-c"
  
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
