resource "aws_dynamodb_table" "saf-test-terraform" {
  name         = "saf-test-terraform"
  billing_mode = "PAY_PER_REQUEST"

  hash_key  = "id"
  range_key = "type"

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "type"
    type = "S"
  }

  server_side_encryption {
    enabled = true
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    ApplicationCI = local.ApplicationCI
    env   = var.env
  }

}
