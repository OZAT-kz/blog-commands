# ==============================================================================
# Updating secrets in Secret Manager
# Source: OZAT Engineering Blog (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-secrets-versions-add.sh
# ==============================================================================


echo -n "sk_live_new_sms_key_123456" | gcloud secrets versions add sms-api-key --data-file=-
