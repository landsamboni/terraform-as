resource "aws_instance" "my-public-instance" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t3.micro"
    subnet_id = aws_subnet.public_subnet.id
    availability_zone = "us-east-1a"
    tags = {
        Name = "Public Instance AS"
    }
  
}