# ==============================================================================
# Provided by OZAT (https://github.com/OZAT-kz)
# ==============================================================================

gcloud projects add-iam-policy-binding my-ecommerce-prod-kz \
    --member="user:lead.dev@ozat.kz" \
    --role="roles/cloudsql.admin"
