resource "aws_route53_zone_association" "secondary" {
  zone_id = var.PRIVATE_HOSTED_ZONE_ID
  vpc_id  = aws_vpc.main.id
}

