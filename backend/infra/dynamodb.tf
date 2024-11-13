resource "aws_dynamodb_table" "locker_room" {
  name         = "${var.project_name}-database"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  range_key = "graduation_year"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "first_name"
    type = "S"
  }

  attribute {
    name = "last_name"
    type = "S"
  }

  attribute {
    name = "email"
    type = "S"
  }

  attribute {
    name = "phone"
    type = "S"
  }

  attribute {
    name = "graduation_year"
    type = "S"
  }

  attribute {
    name = "height"
    type = "S"
  }

  attribute {
    name = "weight"
    type = "S"
  }

  attribute {
    name = "bench_max"
    type = "S"
  }

  attribute {
    name = "squat_max"
    type = "S"
  }

  attribute {
    name = "deadlift_max"
    type = "S"
  }

  attribute {
    name = "forty"
    type = "S"
  }

  attribute {
    name = "gpa"
    type = "S"
  }

  global_secondary_index {
    name            = "first_name-index"
    hash_key        = "first_name"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "last_name-index"
    hash_key        = "last_name"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "email-index"
    hash_key        = "email"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "phone-index"
    hash_key        = "phone"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "graduation_year-index"
    hash_key        = "graduation_year"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "bench_max-index"
    hash_key        = "bench_max"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "deadlift_max-index"
    hash_key        = "deadlift_max"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "forty-index"
    hash_key        = "forty"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "gpa-index"
    hash_key        = "gpa"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "height-index"
    hash_key        = "height"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "squat_max-index"
    hash_key        = "squat_max"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "weight-index"
    hash_key        = "weight"
    projection_type = "ALL"
  }

  tags = {
    Name = "${var.project_name}"
  }
}