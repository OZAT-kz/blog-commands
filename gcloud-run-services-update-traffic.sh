# ==============================================================================
# Спас прод из поезда "Тальго" Алматы-Астана: 10 команд Cloud Shell, которые спасут ваш DevOps без ноутбука
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-run-services-update-traffic.sh
# ==============================================================================

gcloud run services update-traffic api-gateway --to-revisions=api-gateway-00042-v1x=100 --region=europe-west3
