
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

resource "aws_lightsail_instance" "web02" {
  name              = "web02"
  availability_zone = "eu-central-1a"
  blueprint_id      = "nodejs"
  bundle_id         = "nano_3_0"

  key_pair_name = "id_ed25519"

  user_data = file("${path.module}/scripts/setup.sh")

  tags = {
    foo = "bar"
  }
}

resource "aws_lightsail_lb" "lb" {
  name              = "lb"
  health_check_path = "/"
  instance_port     = "80"
  tags = {
    foo = "bar"
  }
}

resource "aws_lightsail_lb_attachment" "at01" {
  lb_name       = aws_lightsail_lb.lb.name
  instance_name = aws_lightsail_instance.web01.name
}


resource "aws_lightsail_lb_attachment" "at02" {
  lb_name       = aws_lightsail_lb.lb.name
  instance_name = aws_lightsail_instance.web02.name
}

resource "aws_lightsail_static_ip" "web-01" {
  name = "ip-web-01"
}

resource "aws_lightsail_static_ip" "web-02" {
  name = "ip-web-02"
}

resource "aws_lightsail_static_ip_attachment" "ip-web-01" {
  static_ip_name = aws_lightsail_static_ip.web-01.id
  instance_name  = aws_lightsail_instance.web01.id
}

resource "aws_lightsail_static_ip_attachment" "ip-web-02" {
  static_ip_name = aws_lightsail_static_ip.web-02.id
  instance_name  = aws_lightsail_instance.web02.id
}
