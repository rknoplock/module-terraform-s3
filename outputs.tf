output "bucket_name" {
  description = "Nome do bucket S3 criado"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN do bucket"
  value       = aws_s3_bucket.this.arn
}

output "versioning_status" {
  description = "Status do versionamento do bucket"
  value       = aws_s3_bucket_versioning.this.versioning_configuration[0].status
}

output "encryption_algorithm" {
  description = "Algoritmo de criptografia configurado no bucket"
  value       = aws_s3_bucket_server_side_encryption_configuration.this.rule[0].apply_server_side_encryption_by_default[0].sse_algorithm
}

output "public_access_blocked" {
  description = "Se acesso público está bloqueado"
  value       = var.block_public_access
}
