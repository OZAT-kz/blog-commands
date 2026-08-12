# ==============================================================================
# Provided by OZAT (https://github.com/OZAT-kz)
# ==============================================================================

gcloud logging read 'resource.type="cloud_run_revision" AND severity>=ERROR' --limit=5 --format=json
