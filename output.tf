output "website_url" {
  description = "The public url of the website."
  value = aws_s3_bucket.static_site.website_endpoint
}