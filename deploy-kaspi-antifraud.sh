# ==============================================================================
# Bash commands to build and deploy Kaspi Anti-Fraud service on Google Cloud Run
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/deploy-kaspi-antifraud.sh
# ==============================================================================

# 1. Авторизация и выбор проекта Google Cloud
gcloud auth login
gcloud config set project ozat-cloud-kz

# 2. Сборка Docker-образа в Cloud Build
gcloud builds submit --tag europe-west1-docker.pkg.dev/ozat-cloud-kz/apps/kaspi-antifraud:latest

# 3. Деплой микросервиса в Cloud Run
gcloud run deploy kaspi-receipt-antifraud \
  --image=europe-west1-docker.pkg.dev/ozat-cloud-kz/apps/kaspi-antifraud:latest \
  --region=europe-west1 \
  --platform=managed \
  --allow-unauthenticated \
  --service-account=kaspi-antifraud-service@ozat-cloud-kz.iam.gserviceaccount.com \
  --set-env-vars="TARGET_SHOP_NAME=ИП Шоурум Алматы" \
  --set-secrets="GEMINI_API_KEY=gemini-api-key:latest,TELEGRAM_BOT_TOKEN=telegram-bot-token:latest" \
  --concurrency=80 \
  --cpu=1 \
  --memory=512Mi

# 4. Регистрация Webhook в Telegram Bot API
export SERVICE_URL=$(gcloud run services describe kaspi-receipt-antifraud --region=europe-west1 --format='value(status.url)')
curl -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/setWebhook?url=${SERVICE_URL}/webhook/telegram"
