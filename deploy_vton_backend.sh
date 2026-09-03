# ==============================================================================
# Deploy commands for VTON Bot
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/deploy_vton_backend.sh
# ==============================================================================

# 1. Настройка проекта
gcloud auth login
gcloud config set project ozat-cloud-kz

# 2. Включение Vertex AI API
gcloud services enable aiplatform.googleapis.com

# 3. Сборка Docker-образа
gcloud builds submit --tag europe-west1-docker.pkg.dev/ozat-cloud-kz/apps/vton-backend:latest

# 4. Применение Terraform
terraform init
terraform apply -var="project_id=ozat-cloud-kz" -auto-approve
