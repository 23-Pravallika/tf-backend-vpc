resource "aws_eip" "ngw-eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.ngw-eip.id
  subnet_id = aws_subnet.public_subnet.*.id[0]

  tags = {
    Name = "robo-${var.ENV}-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_eip.ngw-eip]
}


