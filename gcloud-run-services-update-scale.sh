# ==============================================================================
# Спас прод из поезда "Тальго" Алматы-Астана: 10 команд Cloud Shell, которые спасут ваш DevOps без ноутбука
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-run-services-update-scale.sh
# ==============================================================================

gcloud run services update api-gateway --max-instances=200 --region=europe-west3
