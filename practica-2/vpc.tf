resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr

  tags = {
    "Name" = "vpc-virginia" 
  }

  }

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id 
  cidr_block = var.public_subnet
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "public-subnet" 
  }
  
}

resource "aws_subnet" "private_subnet" {
       vpc_id = aws_vpc.vpc_virginia.id 
   cidr_block = var.private_subnet
  tags = {
    "Name" = "private-subnet" 
  }
}