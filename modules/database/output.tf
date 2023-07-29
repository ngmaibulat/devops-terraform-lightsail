
output "db-addr" {
  value = aws_lightsail_database.db.master_endpoint_address
}

output "db-port" {
  value = aws_lightsail_database.db.master_endpoint_port
}

output "db-user" {
  value = aws_lightsail_database.db.master_username
}

# resource "aws_lightsail_database" "db" {
#   apply_immediately            = ""
#   arn                          = ""
#   availability_zone            = "eu-central-1a"
#   backup_retention_enabled     = true
#   blueprint_id                 = "mysql_8_0"
#   bundle_id                    = "micro_2_0"
#   ca_certificate_identifier    = ""
#   cpu_count                    = ""
#   created_at                   = ""
#   disk_size                    = ""
#   engine                       = ""
#   engine_version               = ""
#   id                           = ""
#   master_database_name         = "masterdb"
#   master_endpoint_address      = ""
#   master_endpoint_port         = ""
#   master_password              = ""
#   master_username              = "EC230D8588745B3A64F8DD5FF823347"
#   preferred_backup_window      = ""
#   preferred_maintenance_window = ""
#   publicly_accessible          = false
#   ram_size                     = ""
#   relational_database_name     = "appdb"
#   secondary_availability_zone  = ""
#   skip_final_snapshot          = false
#   support_code                 = ""
#   tags_all                     = ""
# }
