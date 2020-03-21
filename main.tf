terraform {
  required_version = "~> 0.12"
}

data aws_kms_key key {
  key_id = var.kms_key_alias
}

resource aws_secretsmanager_secret facebook {
  description = var.facebook_secret_description
  name        = var.facebook_secret_name
  kms_key_id  = data.aws_kms_key.key.id
  tags        = var.facebook_secret_tags
}

resource aws_secretsmanager_secret google {
  description = var.google_secret_description
  name        = var.google_secret_name
  kms_key_id  = data.aws_kms_key.key.id
  tags        = var.google_secret_tags
}

resource aws_secretsmanager_secret_version facebook {
  secret_id     = aws_secretsmanager_secret.facebook.id
  secret_string = var.facebook_page_token
}

resource aws_secretsmanager_secret_version google {
  secret_id     = aws_secretsmanager_secret.google.id
  secret_string = file(var.google_credentials_file)
}
