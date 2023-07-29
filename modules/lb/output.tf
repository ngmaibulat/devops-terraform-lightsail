
# output "web01" {
#   value = aws_lightsail_instance.web01
# }

output "ip1" {
  value = aws_lightsail_instance.web01.public_ip_address
}

output "ip2" {
  value = aws_lightsail_instance.web02.public_ip_address
}

output "lbname" {
  value = aws_lightsail_lb.lb.dns_name
}


output "static-ip-1" {
  value = aws_lightsail_static_ip.web-01.ip_address
}

output "static-ip-2" {
  value = aws_lightsail_static_ip.web-02.ip_address
}

