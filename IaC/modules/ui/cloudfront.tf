resource "aws_cloudfront_distribution" "my_website" {
  origin {
    domain_name = aws_s3_bucket.personal_bucket.bucket_domain_name
    origin_id   = "my_website"
    origin_path = "/latest/site"
  }
}
