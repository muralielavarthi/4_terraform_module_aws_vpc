resource "aws_instance" "instance1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = local.instance_public_subnet_name
  }
  subnet_id = aws_subnet.public_subnet.id
}

resource "aws_instance" "instance2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = local.instanc_private_subnet_name
  }
  subnet_id = aws_subnet.private_subnet.id
}
