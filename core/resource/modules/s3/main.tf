module "s3_bucket" {
  for_each = var.bucket_configs

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.6.0"

  bucket = each.value.bucket_name

  control_object_ownership = true
  object_ownership         = "BucketOwnerEnforced"

  versioning = {
    enabled = true
  }

  tags = merge(
    each.value.tags,
    {
      Environment = var.environment,
      Module      = "s3"
    }
  )
}
