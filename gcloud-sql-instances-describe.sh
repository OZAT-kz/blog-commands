# ==============================================================================
# gcloud-sql-instances-describe.sh
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-sql-instances-describe.sh
# ==============================================================================


gcloud sql instances list --filter="name=prod-pg-db"
