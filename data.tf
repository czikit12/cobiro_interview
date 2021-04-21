data "archive_file" "logs" {
  type        = "zip"
  output_path = "logs.zip"
  source_file = "logs.js"
}