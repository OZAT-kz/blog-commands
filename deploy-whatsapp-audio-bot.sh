# ==============================================================================
# Deploy commands for WhatsApp Voice Bot
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/deploy-whatsapp-audio-bot.sh
# ==============================================================================

# 1. Деплой сервиса в Google Cloud Run
gcloud run deploy whatsapp-voice-to-crm \
  --source . \
  --region europe-west1 \
  --allow-unauthenticated \
  --set-secrets="GEMINI_API_KEY=gemini-api-key:latest,WHATSAPP_ACCESS_TOKEN=whatsapp-token:latest,MOYSKLAD_API_TOKEN=moysklad-token:latest"

# 2. Получение URL для Meta Webhook
export WEBHOOK_URL=$(gcloud run services describe whatsapp-voice-to-crm --region=europe-west1 --format='value(status.url)')/webhook/whatsapp
echo "Вставьте этот URL в панель Meta for Developers: $WEBHOOK_URL"
