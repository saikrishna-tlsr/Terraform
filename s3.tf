resource "aws_s3_bucket" "b" {
  bucket = "terraform-bucket-tlsr"
  acl    = "private"

  tags {
    Name        = "terraform bucket-tlsr"
    Environment = "Dev"
  }

server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${aws_kms_key.state_s3_key.arn}"
        sse_algorithm     = "aws:kms"
      }
    }
  }
  }
