terraform {
  backend "gcs" {
    bucket  = "terraform-infraa-state"
    prefix  = "terraform/state"
  }
}
