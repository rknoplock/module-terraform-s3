variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "force_destroy" {
  description = "Destruir mesmo com objetos no bucket"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Habilita versionamento no bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags aplicadas ao bucket"
  type        = map(string)
  default     = {}
}
