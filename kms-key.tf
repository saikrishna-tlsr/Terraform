resource "aws_kms_key" "a" {
  description             = "test-kms"
  deletion_window_in_days = 10
}
