provider "google" {
  project     = "sacred-highway-479412-t7"
  region      = "us-central1"
  credentials = file("key.json")
}


resource "google_storage_bucket" "my_gcs" {
    count = 2
    name = "my-demo-bucket-${count.index}"
    location = "US"
    storage_class = "STANDARD"

    uniform_bucket_level_access = true
}