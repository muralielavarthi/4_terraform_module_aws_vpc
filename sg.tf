resource "aws_security_group" "sg" {
  name = "{local.project}-${local.environment}-${local.application}-sg"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "{local.project}-{local.environment}-{local.application}-sg"
    Project     = local.project
    Environment = local.environment
    Application = local.application
    Owner       = local.owner
  }
  vpc_id = aws_vpc.vpc.id
}