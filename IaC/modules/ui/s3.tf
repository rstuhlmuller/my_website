data "aws_s3_bucket" "personal_bucket" {
  bucket = "aws-rstuhlmuller-s3-usw2"
}

resource "aws_s3_object" "my_website" {
  for_each = fileset("../my_website/", "**")
  bucket   = data.aws_s3_bucket.personal_bucket.bucket
  key      = "my_website/${each.value}"
  source   = "../my_website//${each.value}"
  #   etag     = filemd5("../my_website/${each.value}")
}
