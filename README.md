> WARNING — THIS MODULE IS DEPRECATED

# Facebook to Google Calendar Sync Secrets

Store secrets to access facebook Graph API and Google Calendar API in AWS SecretsManager.

## Prerequisites

Before beginning you will need to create and configure a [facebook app](https://github.com/amancevice/fest/blob/master/docs/facebook.md#facebook) and use it to acquire a page access token for Graph API.

You will also need to set up a Google [service account](https://github.com/amancevice/fest/blob/master/docs/google.md#google) to acquire a credentials file to authenticate with Google APIs.

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
