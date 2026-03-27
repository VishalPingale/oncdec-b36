
resource "aws_instance" "vm" {
  ami           = var.ami_id
  instance_type = var.ins_type
  key_name      = var.key_pair
  tags          = var.tags
}
