resource "aws_subnet" "private_subnet" {
  vpc_id     = data.aws_ssm_parameter.vpc_id.value
  cidr_block = var.private_subnet_cidr
}

resource "aws_route_table" "private_rt" {
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw.id
  }
}

resource "aws_route_table_association" "private_rta" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_rt.id
}
