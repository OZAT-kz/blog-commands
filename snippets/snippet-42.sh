# ==============================================================================
# Provided by OZAT (https://github.com/OZAT-kz)
# ==============================================================================

gcloud compute security-policies rules create 1000 \
    --security-policy=prod-armor \
    --src-ip-ranges="45.22.12.0/24" \
    --action=deny-403
