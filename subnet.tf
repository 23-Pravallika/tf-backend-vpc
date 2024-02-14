# Creates Public Subnets
resource "aws_subnet" "public_subnet" {
  count = length(var.PUBLIC_SUBNET)  
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.PUBLIC_SUBNET, count.index)
  availability_zone = element(var.AZ, count.index)
  map_public_ip_on_launch = "true"

  tags = {
    Name = "robo-public-subnet-${element(var.AZ, count.index)}"
  }
}

# Creates Private Subnets
resource "aws_subnet" "private_subnet" {
  count = length(var.PRIVATE_SUBNET)  
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.PRIVATE_SUBNET, count.index)
  availability_zone = element(var.AZ, count.index)

  tags = {
    Name = "robo-private-subnet-${element(var.AZ, count.index)}"
  }
}

