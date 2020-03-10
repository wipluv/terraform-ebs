terraform {
  backend "s3" {
    bucket = "terraform-wipluv"
    key    = "terraform/dev/ebs"
    region = "us-east-1"
    shared_credentials_file = "/home/intelycorellc/.aws/credentials"
    profile = "wipluuu"
  }
}
