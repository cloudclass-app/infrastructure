kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl patch deploy argocd-server -n argocd -p '[{"op": "add", "path": "/spec/template/spec/containers/0/command/-", "value": "--insecure"}]' --type json
kubectl apply -n argocd -f cd

#kubectl patch secret argocd-secret -n argocd -p ('{"stringData": {"admin.password": "$2a$10$bi2U/yemmiQacjjchRukSe2/e2Q9NAi2T.MmGbgoeqRadK6vcYWna","admin.passwordMtime": "' + (Get-Date -UFormat +%FT%T%Z) + '"}}') --type json
#kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.0-beta.1/cert-manager.crds.yaml