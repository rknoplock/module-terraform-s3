variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "force_destroy" {
  description = "Força a destruição do bucket mesmo com objetos"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Ativa o versionamento do bucket"
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

variable "lifecycle_rules" {
  description = "Regras de ciclo de vida do bucket"
  type = list(object({
    id                                     = string
    status                                 = string
    prefix                                 = optional(string)
    tags                                   = optional(map(string))
    abort_incomplete_multipart_upload_days = optional(number)

    expiration = optional(object({
      days                         = optional(number)
      expired_object_delete_marker = optional(bool)
    }))

    transition = optional(list(object({
      days          = number
      storage_class = string
    })))
  }))
  default = []
}
