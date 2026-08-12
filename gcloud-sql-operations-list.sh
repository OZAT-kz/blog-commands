# ==============================================================================
# Listing recent Cloud SQL operations
# Source: OZAT Engineering Blog (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-sql-operations-list.sh
# ==============================================================================


gcloud sql operations list --instance=prod-pg-db --limit=3
