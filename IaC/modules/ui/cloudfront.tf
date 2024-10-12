resource "aws_cloudfront_origin_access_identity" "my_website" {
  comment = "My_Website Access Identity."
}

data "aws_acm_certificate" "rodman_stuhlmuller_net" {
  domain      = "rodman.stuhlmuller.net"
  types       = ["AMAZON_ISSUED"]
  most_recent = true
}

resource "aws_cloudfront_distribution" "my_website" {
  aliases             = ["rodman.stuhlmuller.net"]
  enabled             = true
  default_root_object = "index.html"
  price_class         = "PriceClass_100"
  wait_for_deployment = false

  origin {
    domain_name = aws_s3_bucket.my_website.bucket_regional_domain_name
    origin_id   = "my_website"
    origin_path = "/my-website"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.my_website.cloudfront_access_identity_path
    }
  }

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "my_website"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }
  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["US"]
    }
  }
  viewer_certificate {
    acm_certificate_arn      = data.aws_acm_certificate.rodman_stuhlmuller_net.arn
    minimum_protocol_version = "TLSv1.2_2021"
    ssl_support_method       = "sni-only"
  }
}
