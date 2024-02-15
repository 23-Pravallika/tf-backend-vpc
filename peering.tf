resource "aws_vpc_peering_connection" "peer" {
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.DEFAULT_VPC_ID
  auto_accept   = true                  # This options is valid if both the VPC's are in the same account and in the same region.
}


