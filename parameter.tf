resource "aws_ssm_parameter" "subnet_ids" {
  name  = "subnet_ids"
  type  = "StringList"
  value = join(",", [
    aws_subnet.public_subnet_1a.id,
    aws_subnet.private_subnet_1a.id,
    aws_subnet.database_subnet_1a.id,
    aws_subnet.public_subnet_1b.id,
    aws_subnet.private_subnet_1b.id,
    aws_subnet.database_subnet_1b.id
  ])
}

resource "aws_ssm_parameter" "vpc_id" {
  name  = "vpc_id"
  type  = "String"
  value = aws_vpc.vpc.id
}