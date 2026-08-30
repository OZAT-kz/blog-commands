# ==============================================================================
# Спас прод из поезда "Тальго" Алматы-Астана: 10 команд Cloud Shell, которые спасут ваш DevOps без ноутбука
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-projects-add-iam-policy-binding.sh
# ==============================================================================

gcloud projects add-iam-policy-binding my-ecommerce-prod-kz \
    --member="user:lead.dev@ozat.kz" \
    --role="roles/cloudsql.admin"
