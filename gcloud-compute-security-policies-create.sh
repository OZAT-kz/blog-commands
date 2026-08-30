# ==============================================================================
# gcloud-compute-security-policies-create.sh
# Source: OZAT Engineering Hub (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/gcloud-compute-security-policies-create.sh
# ==============================================================================


gcloud compute security-policies rules create 1000 \
    --security-policy=prod-armor \
    --src-ip-ranges="45.22.12.0/24" \
    --action=deny-403
