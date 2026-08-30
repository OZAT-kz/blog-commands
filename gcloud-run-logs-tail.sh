# ==============================================================================
# gcloud-run-logs-tail.sh
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-run-logs-tail.sh
# ==============================================================================


gcloud logging read 'resource.type="cloud_run_revision" AND severity>=ERROR' --limit=5 --format=json
