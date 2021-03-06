
variable "kms_key_alias" {
  description = "KMS Key alias for encrypting secrets"
  default     = "alias/aws/secretsmanager"
}

variable "facebook_page_token" {
  description = "Page token for facebook.com/BostonDSA"
}

variable "facebook_secret_description" {
  description = "facebook SecretsManager secret description"
  default     = "Access token for facebook page."
}

variable "facebook_secret_name" {
  description = "facebook SecretsManager secret name"
}

variable "facebook_secret_tags" {
  description = "facebook SecretsManager secret tags"
  type        = map(string)
  default     = {}
}

variable "google_credentials_file" {
  description = "Path to Google Service Account credentials file"
}

variable "google_secret_description" {
  description = "Google SecretsManager secret description"
  default     = "Google service account credentials"
}

variable "google_secret_name" {
  description = "Google service account SecretsManager secret name"
}

variable "google_secret_tags" {
  description = "Google service account SecretsManager secret tags"
  type        = map(string)
  default     = {}
}
