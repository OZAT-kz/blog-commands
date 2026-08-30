# ==============================================================================
# Спас прод из поезда "Тальго" Алматы-Астана: 10 команд Cloud Shell, которые спасут ваш DevOps без ноутбука
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-run-logs-tail.sh
# ==============================================================================

gcloud logging read 'resource.type="cloud_run_revision" AND severity>=ERROR' --limit=5 --format=json
