output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "subnet_ids" {
  value = [
    aws_subnet.public_subnet_1a.id,
    aws_subnet.private_subnet_1a.id,
    aws_subnet.database_subnet_1a.id,
    aws_subnet.public_subnet_1b.id,
    aws_subnet.private_subnet_1b.id,
    aws_subnet.database_subnet_1b.id
  ]
}