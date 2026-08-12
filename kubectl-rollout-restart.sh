# ==============================================================================
# Restarting a Kubernetes deployment
# Source: OZAT Engineering Blog (https://ozat.kz)
# GitHub: https://github.com/OZAT-kz/blog-commands/blob/main/kubectl-rollout-restart.sh
# ==============================================================================


kubectl rollout restart deployment/email-worker-deployment -n background-workers
