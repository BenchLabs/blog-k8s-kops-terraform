// S3 bucket to store kops state.
resource "aws_s3_bucket" "kops_state" {
  bucket        = "alberto-kops-${local.environment}-state"
  acl           = "private"
  force_destroy = true
  tags          = "${merge(local.tags)}"
}
