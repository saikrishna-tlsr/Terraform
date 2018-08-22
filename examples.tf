provider "aws" {
  access_key = "aws_access_key_id"
  secret_key = "aws_secret_access_key_id"
  region     = "us-east-1"
}
data "aws_availability_zones" "all" {}
