resource "aws_s3_bucket" "bucket1" {
	bucket = "kirantt-first-st-bucket"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
bucket = aws_s3_bucket.bucket1.id
acl = "private"
}

provider "aws" {
    access_key=var.accesskey
    secret_key=var.secretKey
  region = "eu-west-1"
}

variable "accesskey"{
    default="AKIAZTIMJ7JHOXLM3VLJ"

}

variable "secretkey"{

    default="fuF7sXB6Re4c6g6vbKmk2qUFLWf/vxpeH4RjcYBz"
}
