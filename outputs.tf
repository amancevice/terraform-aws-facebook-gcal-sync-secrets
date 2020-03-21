output facebook_secret {
  description = "facebook SecretsManager secret"
  value       = aws_secretsmanager_secret.facebook
}

output google_secret {
  description = "Google service account SecretsManager secret"
  value       = aws_secretsmanager_secret.google
}
