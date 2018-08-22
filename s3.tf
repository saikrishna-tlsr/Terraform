resource "aws_s3_bucket" "b" {
  bucket = "terraform-bucket-tlsr"
  acl    = "private"

  tags {
    Name        = "terraform bucket-tlsr"
    Environment = "Dev"
  }
    }
resource "aws_s3_bucket_object" "b_object" {
  key                    = "someobject"
  bucket                 = "${aws_s3_bucket.b.id}"
  source                 = "index.html"
  server_side_encryption = "AES256"
}
  
