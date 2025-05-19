variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "force_destroy" {
  description = "Força a destruição do bucket mesmo com objetos"
  type        = bool
  default     = false
}

variable "acl" {
  description = "ACL do bucket (ex: private, public-read)"
  type        = string
  default     = "private"
}

variable "block_public_access" {
  description = "Bloqueia acesso público ao bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags aplicadas ao bucket"
  type        = map(string)
  default     = {}
}

variable "aws_region" {
  description = "Região AWS para o provider"
  type        = string
  default     = "us-east-1"
}
