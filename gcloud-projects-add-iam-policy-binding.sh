# ==============================================================================
# gcloud-projects-add-iam-policy-binding.sh
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-projects-add-iam-policy-binding.sh
# ==============================================================================


gcloud projects add-iam-policy-binding my-ecommerce-prod-kz \
    --member="user:lead.dev@ozat.kz" \
    --role="roles/cloudsql.admin"
