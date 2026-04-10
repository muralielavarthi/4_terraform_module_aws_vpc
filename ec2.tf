resource "aws_instance" "instance1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  tags = {
    Name = "{local.project}-{local.environment}-{local.application}-instance-public-subnet"
  }
  subnet_id = aws_subnet.public_subnet.id
}

resource "aws_instance" "instance2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  tags = {
    Name = "{local.project}-{local.environment}-{local.application}-instance-private-subnet"
  }
  subnet_id = aws_subnet.private_subnet.id
}
