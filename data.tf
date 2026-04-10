data "aws_ssm_parameter" "vpc_id" {
  name = "${local.project}-${local.environment}-${local.application}-vpc-id"
}

data "aws_ssm_parameter" "sg_id" {
  name = "${local.project}-${local.environment}-${local.application}-sg-id"
}