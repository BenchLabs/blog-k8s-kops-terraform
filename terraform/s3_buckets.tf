// S3 bucket to store kops state.
resource "aws_s3_bucket" "kops_state" {
  bucket        = "${local.kops_state_bucket_name}"
  acl           = "private"
  force_destroy = true
  tags          = "${merge(local.tags)}"
}
