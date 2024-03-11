resource "aws_instance" "web" {
  count                  = var.number_instances
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  tags                   = var.instance_tags
  key_name               = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]
}