resource "aws_vpc" "main" {
  cidr_block = var.VPC_CIDR
  enable_dns_hostnames = true

  tags = {
    Name = "robo-${var.ENV}-vpc"
  }
}

