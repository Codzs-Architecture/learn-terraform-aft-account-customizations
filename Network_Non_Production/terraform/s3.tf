data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "network_nonproduction001_bucket" {
  bucket = "aft-network_nonproduction001-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
