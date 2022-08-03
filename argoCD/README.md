# ARGOCD INSTALLATION AND SIMPLE APP DEPLYMENT IN K8S



### Install ArgoCD in k8s
- kubectl create namespace argocd
- kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

### Access ArgoCD UI
- kubectl get svc -n argocd
- kubectl port-forward svc/argocd-server 8080:443 -n argocd

### Login with admin user and below token (as in documentation):
- kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 --decode && echo

- Note: You can change and delete init password


### References: 
- youtube: https://www.youtube.com/watch?v=MeU5_k9ssrs&list=WL&index=5&t=1556s
- Git Repo to follow along the demo:  ►  https://gitlab.com/nanuchi/argocd-app...
- Install ArgoCD:                                     ►  https://argo-cd.readthedocs.io/en/sta...
- Login to ArgoCD:                                 ►  https://argo-cd.readthedocs.io/en/sta...
- ArgoCD Configuration:                        ►  https://argo-cd.readthedocs.io/en/sta...<!--  -->