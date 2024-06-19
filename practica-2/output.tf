output "ec2_public_ip" {
  description = "IP publica de la instancia EC2 en la public subnet"
  value = aws_instance.my-public-instance.public_ip
}