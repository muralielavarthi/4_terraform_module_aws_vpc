resource "aws_instance" "bastion_host" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "{local.project}-{local.environment}-{local.application}-bastion-host"
  }
  subnet_id = aws_subnet.public_subnet.id
}
