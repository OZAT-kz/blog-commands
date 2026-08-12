# ==============================================================================
# Provided by OZAT (https://github.com/OZAT-kz)
# ==============================================================================

echo -n "sk_live_new_sms_key_123456" | gcloud secrets versions add sms-api-key --data-file=-
