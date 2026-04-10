resource "aws_security_group" "sg_bastion" {
  name = "{local.project}-${local.environment}-${local.application}-sg-bastion"
  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "{local.project}-{local.environment}-{local.application}-sg-bastion"
    Project     = local.project
    Environment = local.environment
    Application = local.application
    Owner       = local.owner
  }
  vpc_id = aws_vpc.vpc.id
}