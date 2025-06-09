variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "tags" {
  description = "Tags aplicadas ao bucket"
  type        = map(string)
}

variable "versioning_enabled" {
  description = "Habilita versionamento"
  type        = bool
  default     = true
}

variable "enable_encryption" {
  description = "Habilita criptografia AES256"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Permite destruir o bucket mesmo com objetos"
  type        = bool
  default     = false
}
