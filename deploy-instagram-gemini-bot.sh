# ==============================================================================
# gcloud Deployment Commands for Instagram Direct Bot
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/deploy-instagram-gemini-bot.sh
# ==============================================================================

# 1. Создание защищенных секретов в Google Secret Manager
gcloud secrets create gemini-api-key --replication-policy="automatic"
echo -n "AIzaSyYourSecretGeminiKey" | gcloud secrets versions add gemini-api-key --data-file=-

gcloud secrets create instagram-app-secret --replication-policy="automatic"
echo -n "your_meta_app_secret_here" | gcloud secrets versions add instagram-app-secret --data-file=-

# 2. Сборка контейнера через Google Cloud Build
gcloud builds submit --tag europe-west1-docker.pkg.dev/$GOOGLE_CLOUD_PROJECT/apps/instagram-bot:v1.0 .

# 3. Деплой сервиса в Google Cloud Run с масштабированием в ноль
gcloud run deploy instagram-direct-gemini-bot \
  --image europe-west1-docker.pkg.dev/$GOOGLE_CLOUD_PROJECT/apps/instagram-bot:v1.0 \
  --region europe-west1 \
  --allow-unauthenticated \
  --min-instances 0 \
  --max-instances 5 \
  --memory 512Mi \
  --cpu 1

# 4. Проверка логов диалогов в реальном времени
gcloud logging read "resource.type=cloud_run_revision AND resource.labels.service_name=instagram-direct-gemini-bot" \
  --limit 20 \
  --format="table(timestamp, textPayload)"
