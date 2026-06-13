Write-Host ""
Write-Host "====================================="
Write-Host "EmployeeProfileApp Local Bootstrap"
Write-Host "====================================="
Write-Host ""

# Add ingress-nginx repo

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

helm repo update

# Install ingress-nginx with fixed ports

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx `
  --namespace ingress-nginx `
  --create-namespace `
  --set controller.service.type=NodePort `
  --set controller.service.nodePorts.http=30080 `
  --set controller.service.nodePorts.https=30443

Write-Host ""
Write-Host "Ingress Installed"
Write-Host ""

kubectl get svc -n ingress-nginx