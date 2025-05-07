# Voting Application Helm Chart

This Helm chart deploys the complete Voting Application, including:
- Backend API server
- Frontend web application
- PostgreSQL database
- Ingress for external access

   ```bash
    helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
    helm repo update
    kubectl create namespace nginx-ingress
    helm install ingress-nginx ingress-nginx/ingress-nginx -n nginx-ingress
   ```
   ```bash
   helm install voting-app --namespace voting-app --create-namespace
   ```


kubectl create namespace ingress-nginx
