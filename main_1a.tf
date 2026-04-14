
# resources for 1a public subnet

resource "aws_subnet" "public_subnet_1a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public_subnet_cidr_1a
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.az.names[0]
}

resource "aws_route_table" "public_rt_1a" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = var.public_subnet_cidr_1a
       gateway_id = aws_internet_gateway.igw.id
    }
}

resource "aws_route_table_association" "public_rta_1a" {
  subnet_id = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_rt_1a.id
}

# eip and nat gateway for 1a private subnet

resource "aws_eip" "eip_1a" {
  
}

resource "aws_nat_gateway" "ngw_1a" {
  allocation_id = aws_eip.eip_1a.id
  subnet_id = aws_subnet.public_subnet_1a.id
}

# resources for 1a private subnet

resource "aws_subnet" "private_subnet_1a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.private_subnet_cidr_1a
  availability_zone = data.aws_availability_zones.az.names[0]
}

resource "aws_route_table" "private_rt_1a" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = var.private_subnet_cidr_1a
       gateway_id = aws_nat_gateway.ngw_1a.id
    }
}

resource "aws_route_table_association" "private_rta_1a" {
  subnet_id = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.private_rt_1a.id
}
