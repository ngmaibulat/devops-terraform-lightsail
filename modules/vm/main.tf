
resource "aws_lightsail_instance" "web01" {
  name              = "web01"
  availability_zone = "eu-central-1a"
  blueprint_id      = "nodejs"
  bundle_id         = "nano_3_0"

  key_pair_name = "id_ed25519"

  user_data = file("${path.module}/scripts/setup.sh")

  tags = {
    foo = "bar"
  }
}
