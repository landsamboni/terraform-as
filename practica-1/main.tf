resource "aws_s3_bucket" "Mybucket" {
  bucket = var.bucket-name
  tags = {
    Name = "Tag-Name-AS"
  }
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.Mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "my-bucket-arn" {
  value = aws_s3_bucket.Mybucket.arn
  description = "este es el ARN del bucket creado"
}
  
