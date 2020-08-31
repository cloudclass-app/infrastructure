kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.0-beta.1/cert-manager.crds.yaml