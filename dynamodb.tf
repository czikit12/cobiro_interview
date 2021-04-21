resource "aws_dynamodb_table" "cobiro-dynamodb-table" {
  name           = "domains"
  billing_mode   = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "DomainName"


  attribute {
    name = "DomainName"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-cobiro-1"
    Environment = "production"
  }
}

resource "aws_dynamodb_table_item" "cobiro_example" {
  table_name = aws_dynamodb_table.cobiro-dynamodb-table.name
  hash_key   = aws_dynamodb_table.cobiro-dynamodb-table.hash_key

  item = <<ITEM
{
  "DomainName": {"S": "Cobiro"}
}
ITEM
}
