resource "aws_ssm_parameter" "vpc_id" {
  name = "${local.project}-${local.environment}-${local.application}-vpc-id"
  type = "String"
  value = aws_vpc.vpc.id
}

resource "aws_ssm_parameter" "sg_id" {
  name = "${local.project}-${local.environment}-${local.application}-sg-id"
  type = "String"
  value = aws_security_group.sg.id
}