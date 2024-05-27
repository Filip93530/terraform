provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "eu-central-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_region_validation      = true
  s3_use_path_style           = true
  endpoints {
    s3 = "http://localhost:4566"
  }
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "mys3bucket"
}
