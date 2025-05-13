variable "aws_region" {
  default = "eu-west-2"
}

variable "bucket_name" {
  description = "S3 bucket name for website"
}

variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "zone_id" {
  description = "Route53 Hosted Zone ID"
  type        = string
  default     = ""
}
