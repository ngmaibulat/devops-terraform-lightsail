
output "web01" {
  value = aws_lightsail_instance.web01
}

output "ip" {
  value = aws_lightsail_instance.web01.public_ip_address
}

#  resource "aws_lightsail_instance" "web01" {
#       + arn                = (known after apply)
#       + availability_zone  = "eu-central-1a"
#       + blueprint_id       = "nodejs"
#       + bundle_id          = "nano_3_0"
#       + cpu_count          = (known after apply)
#       + created_at         = (known after apply)
#       + id                 = (known after apply)
#       + ip_address_type    = "dualstack"
#       + ipv6_addresses     = (known after apply)
#       + is_static_ip       = (known after apply)
#       + name               = "web01"
#       + private_ip_address = (known after apply)
#       + public_ip_address  = (known after apply)
#       + ram_size           = (known after apply)
#       + tags               = {
#           + "foo" = "bar"
#         }
#       + tags_all           = {
#           + "foo" = "bar"
#         }
#       + username           = (known after apply)
#     }
