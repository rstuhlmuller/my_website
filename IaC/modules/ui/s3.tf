resource "aws_s3_bucket" "my_website" {
  bucket = "aws-rstuhlmuller-s3-usw2-my-website"
}

resource "aws_s3_object" "my_website" {
  for_each = fileset("../my_website/", "**")
  bucket   = aws_s3_bucket.my_website.bucket
  key      = "my_website/${each.value}"
  source   = "../my_website//${each.value}"
  #   etag     = filemd5("../my_website/${each.value}")
}

data "aws_iam_policy_document" "s3_policy" {
  statement {
    sid       = "my_website"
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.my_website.arn}/my_website/*"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.my_website.iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "cloudfront_policy" {
  bucket = aws_s3_bucket.my_website.id
  policy = data.aws_iam_policy_document.s3_policy.json
}
