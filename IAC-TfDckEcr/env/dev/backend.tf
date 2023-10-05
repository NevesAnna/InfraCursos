terraform {
  backend "s3" {
    bucket = "terraform-state-anna"
    key    = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}
