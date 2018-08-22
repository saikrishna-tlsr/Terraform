resource "aws_s3_bucket" "b" {
  bucket = "terraform-bucket"
  acl    = "private"

  tags {
    Name        = "terraform bucket"
    Environment = "Dev"
  }
}
