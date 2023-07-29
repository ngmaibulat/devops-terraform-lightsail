
resource "aws_lightsail_database" "db" {
  # name              = "db"
  availability_zone = "eu-central-1a"

  relational_database_name = "appdb"

  master_database_name = "masterdb"

  master_username = var.db_user
  master_password = var.db_password

  # blueprint_id = "mysql_8_0"
  blueprint_id = "postgres_15"
  bundle_id    = "micro_2_0"

  skip_final_snapshot = true
}
