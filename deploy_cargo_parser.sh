# ==============================================================================
# Deploy commands for Cargo Tracker
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/deploy_cargo_parser.sh
# ==============================================================================

# 1. Авторизация и настройка
gcloud auth login
gcloud config set project ozat-cloud-kz

# 2. Создание процессора Document AI (если через CLI)
# Альтернативно используется Terraform (см. листинг выше)

# 3. Сборка образа
gcloud builds submit --tag europe-west1-docker.pkg.dev/ozat-cloud-kz/apps/cargo-parser:latest

# 4. Деплой Cloud Run
gcloud run deploy cargo-waybill-parser \
  --image europe-west1-docker.pkg.dev/ozat-cloud-kz/apps/cargo-parser:latest \
  --region europe-west1 \
  --platform managed \
  --allow-unauthenticated \
  --set-secrets="GEMINI_API_KEY=gemini-api-key:latest" \
  --set-env-vars="DOCAI_LOCATION=eu,FIRESTORE_DATABASE=(default)" \
  --memory=512Mi \
  --cpu=1
