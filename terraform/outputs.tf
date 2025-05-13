output "s3_website_url" {
  value = aws_s3_bucket_website_configuration.static_site.website_endpoint
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "cdn_website_url" {
  value = "https://${var.domain_name}"
}
