data "aws_s3_bucket" "personal_bucket" {
  bucket = "aws-rstuhlmuller-s3-usw2"
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.personal_bucket.bucket
  key    = "my_website"
  source = "my_website"
}
