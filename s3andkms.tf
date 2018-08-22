resource "aws_kms_key" "terraformkms" {
  description             = "test-kms"
  deletion_window_in_days = 7
}

resource "aws_s3_bucket" "terraform-bucket-tlsr2" {
  bucket = "terraform-bucket-tlsr2"
  acl    = "private"
}

resource "aws_s3_bucket_object" "examplebucket_object" {
  key        = "someobject"
  bucket     = "${aws_s3_bucket.terraform-bucket-tlsr2.id}"
  source     = "index.html"
  kms_key_id = "${aws_kms_key.test-kms.arn}"
}
