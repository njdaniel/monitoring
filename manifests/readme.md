# Deployment

https://docs.traefik.io/getting-started/install-traefik/#use-the-helm-chart

    $ kubectl create ns traefik-v2
    $ helm repo add traefik https://containous.github.io/traefik-helm-chart
    $ helm repo update
    $ helm install traefik traefik/traefik
    $ kubectl port-forward $(kubectl get pods --selector "app.kubernetes.io/name=traefik" --output=name) 9000:9000
    $ # check http://127.0.0.1:9000/dashboard/
