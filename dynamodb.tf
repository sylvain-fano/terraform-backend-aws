resource "aws_dynamodb_table" "lock_table" {
  name           = "${local.prefix}-dynamodb"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  tags           = local.common_tags

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_ssm_parameter" "locks_table_arn" {
  name  = "${local.ssm_prefix}/tf-locks-table-arn"
  type  = "String"
  value = aws_dynamodb_table.lock_table.arn
}
