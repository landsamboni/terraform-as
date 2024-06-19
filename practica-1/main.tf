resource "aws_s3_bucket" "MyBucket" {
  bucket = var.bucket-name
  tags = {
    Name = "donde-esta-esta-etiqueta"
  }
}


/* resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.MyBucket.id
  versioning_configuration {
    status = "Enabled"
  }
} */

output "my-bucket-arn" {
  value = aws_s3_bucket.MyBucket.arn
  description = "este es el ARN del bucket creado"
}
  
