
resource "aws_lightsail_instance" "web01" {
  name              = "web01"
  availability_zone = "eu-central-1a"
  blueprint_id      = "nodejs"
  bundle_id         = "nano_3_0"

  key_pair_name = "id_ed25519"

  user_data = "sudo apt update && sudo apt install -y python-is-python3 && sudo npm install -g typescript"

  tags = {
    foo = "bar"
  }
}
