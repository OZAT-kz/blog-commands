# ==============================================================================
# Спас прод из поезда "Тальго" Алматы-Астана: 10 команд Cloud Shell, которые спасут ваш DevOps без ноутбука
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-secrets-versions-add.sh
# ==============================================================================

echo -n "sk_live_new_sms_key_123456" | gcloud secrets versions add sms-api-key --data-file=-
