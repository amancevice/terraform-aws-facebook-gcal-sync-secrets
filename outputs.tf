output facebook_secret_arn {
  description = "facebook SecretsManager secret ARN."
  value       = "${aws_secretsmanager_secret.facebook.arn}"
}

output facebook_secret_name {
  description = "facebook SecretsManager secret name."
  value       = "${aws_secretsmanager_secret.facebook.name}"
}

output google_secret_arn {
  description = "Google service account SecretsManager secret ARN."
  value       = "${aws_secretsmanager_secret.google.arn}"
}

output google_secret_name {
  description = "Google service account SecretsManager secret name."
  value       = "${aws_secretsmanager_secret.google.name}"
}
