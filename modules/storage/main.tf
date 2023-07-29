
resource "aws_lightsail_bucket" "storage" {
  name      = "ngm-devops-bucket"
  bundle_id = "small_1_0"
}
