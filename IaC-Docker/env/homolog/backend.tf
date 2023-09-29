terraform {
  backend "s3" {
    bucket = "terraform-state-anna"
    key    = "Prod/terraform.tfstate"
    region = "us-west-2"
  }
}
