locals {
  project_id = "tinker-2024"
  region     = "US"
  default_table_expiration_days = 7
}

provider "google" {
  project = local.project_id
  region  = local.region
}

resource "google_bigquery_dataset" "tinker" {
  dataset_id = "tinker"
  location   = "US"
 
  default_table_expiration_ms = local.default_table_expiration_days * 24 * 60 * 60 * 1000
}