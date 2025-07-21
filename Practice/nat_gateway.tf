# elastic IP
resource "aws_eip" "elastic_ip" {
    domain = "vpc"
}

# create NAT Gateway
resource "aws_nat_gateway" "nat_gateway" {
    allocation_id = aws_eip.elastic_ip.id
    subnet_id = aws_subnet.public_subnet_1.id
    tags = {
      Name = "Nat Gateway"
    }
}

resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_gateway.id
    }
    tags = {
      Name = "private route table"
    }
}

resource "aws_route_table_association" "private_subnet1_assoc" {
    subnet_id = aws_subnet.private_subnet_1.id
    route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_subnet2_assoc" {
    subnet_id = aws_subnet.private_subnet_2.id
    route_table_id = aws_route_table.private_route_table.id
  
}