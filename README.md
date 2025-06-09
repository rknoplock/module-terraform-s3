# Terraform Module: AWS S3 Bucket

Este módulo cria um bucket S3 na AWS com opções configuráveis para:

- Nome do bucket
- Tags
- Controle de versionamento
- Configuração de criptografia do lado servidor (AES256)
- Opção para forçar a destruição do bucket mesmo com objetos dentro

## Requisitos

- Terraform >= 1.0
- Provedor AWS configurado (recomenda-se versão >= 5.0)

## Variáveis

| Nome               | Tipo           | Default | Descrição                                      |
|--------------------|----------------|---------|------------------------------------------------|
| `bucket_name`      | `string`       | n/a     | Nome do bucket S3                              |
| `tags`             | `map(string)`  | `{}`    | Tags para aplicar no bucket                    |
| `force_destroy`    | `bool`         | `false` | Permite deletar bucket mesmo com objetos      |
| `versioning_enabled`| `bool`         | `false` | Habilita versionamento do bucket               |
| `enable_encryption`| `bool`         | `false` | Ativa criptografia AES256 no bucket            |

## Outputs

| Nome        | Descrição                    |
|-------------|------------------------------|
| `bucket_id` | ID do bucket S3 criado       |
| `bucket_arn`| ARN do bucket S3             |

## Exemplo de uso

```hcl
module "s3_bucket" {
  source = "git::https://github.com/rknoplock/module-terraform-s3.git?ref=v0.0.3"

  bucket_name         = "meu-bucket-teste"
  tags = {
    ambiente = "dev"
    projeto  = "logs"
  }
  force_destroy       = true
  versioning_enabled  = true
  enable_encryption   = true
}
