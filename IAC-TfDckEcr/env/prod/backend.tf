terraform {
  backend "s3" {
    bucket = "terraform-state-anna"
    key    = "dev/terraform.tfstate"
    region = "us-west-2"
  }
}
