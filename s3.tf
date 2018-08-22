resource "aws_s3_bucket" "b" {
  bucket = "terraform-bucket-tlsr"
  acl    = "private"

  tags {
    Name        = "terraform bucket-tlsr"
    Environment = "Dev"
  }
}
