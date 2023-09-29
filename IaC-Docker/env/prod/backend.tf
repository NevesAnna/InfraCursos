terraform {
  backend "s3" {
    bucket = "terraform-state-anna"
    key    = "homolog/terraform.tfstate"
    region = "us-west-2"
  }
}
