variable "bucket_configs" {
  description = "Buckets configuration map"
  type = map(object({
    bucket_name = string
    tags        = map(string)
  }))
}

variable "environment" {
  description = "Working Environment (ex: dev, prod)"
  type        = string
  default     = "dev"
}