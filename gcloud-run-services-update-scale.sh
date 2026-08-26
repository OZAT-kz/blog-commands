# ==============================================================================
# gcloud-run-services-update-scale.sh
# Source: OZAT Engineering Blog (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-run-services-update-scale.sh
# ==============================================================================


gcloud run services update api-gateway --max-instances=200 --region=europe-west3
