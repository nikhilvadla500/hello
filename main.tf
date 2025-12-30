provider "google" {
  project = "sacred-highway-479412-t7"
  region  = "us-central1"
}


resource "random_id" "suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "my_gcs" {
  count         = 2
  name          = "my-demo-bucket-${count.index}-${random_id.suffix.hex}"
  location      = "US"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true
}
