variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "acl" {
  description = "ACL do bucket S3"
  type        = string
  default     = "private"
}

variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "tags" {
  description = "Tags do bucket"
  type        = map(string)
  default     = {}
}
