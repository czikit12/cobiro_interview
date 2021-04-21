variable "bucket_name" {
  description = "The name of the AWS S3 bucket this website will be published to."
}

variable "tags" {
  default     = {}
  description = "Map of the tags for all resources"
  type        = map
}
