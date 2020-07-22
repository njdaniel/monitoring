From:
    kubectl get deployment ${pod} -n monitoring -o yaml
prom-operator-deploy.yaml

From:
    kubectl get svc ${pod} -n monitoring -o yaml
prom-operator-svc.yaml

From:
    helm template stable/prometheus-operator > prom-operator-helm-template.yaml
prom-operator-helm-template.yaml
