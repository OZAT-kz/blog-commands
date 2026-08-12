# ==============================================================================
# Rolling back Cloud Run traffic to a previous revision
# Source: OZAT Engineering Blog (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-run-services-update-traffic.sh
# ==============================================================================


gcloud run services update-traffic api-gateway --to-revisions=api-gateway-00042-v1x=100 --region=europe-west3
