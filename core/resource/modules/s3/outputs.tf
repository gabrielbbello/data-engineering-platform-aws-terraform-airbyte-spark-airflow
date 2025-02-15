output "buckets" {
  description = "Outputs map for S3 buckets"
  value = {
    for key, bucket in module.s3_bucket :
    key => {
      bucket_arn         = bucket.s3_bucket_arn
      bucket_name        = bucket.s3_bucket_id
      bucket_domain_name = bucket.s3_bucket_bucket_domain_name
    }
  }
}
