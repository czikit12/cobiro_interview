resource "aws_s3_bucket" "static_site" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"  
  }
}

resource "aws_s3_bucket_object" "index" {
  bucket       = aws_s3_bucket.static_site.bucket
  key          = "index.html"
  source       = "static/index.html"
  content_type = "text/html"
  etag         = md5(file("static/index.html"))
  acl          = "public-read"
}
