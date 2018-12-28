# Facebook to Google Calendar Sync Secrets

Store secrets to access facebook Graph API and Google Calendar API in AWS SecretsManager.

## Usage

Collect your facebook Page access token and Google service account credentials file.

```hcl
module secrets {
  source                  = "amancevice/facebook-gcal-sync-secrets/aws"
  facebook_page_token     = "<your-page-access-token>"
  facebook_secret_name    = "facebook/MyPage"
  google_secret_name      = "google/MySvcAcct"
  google_credentials_file = "<path-to-credentials-JSON-file>"
}
```
