# Monitoring

Setup a k8s cluster with prometheus. Helm install vs manifests. Use operator to auto-config new applications to the cluster.

    $ # alias kc=kubectl
    $ make kind-up
    $ helm repo add stable https://kubernetes-charts.storage.googleapis.com/
    $ helm repo update
    $ #helm install prometheus stable/prometheus --namespace monitoring
    $ helm install stable/prometheus-operator --generate-name
    $ kubectl get po
    $ # port forward the grafana the pod
    $ kc port-forward prometheus-operator-1594044504-grafana-58bb7dd46f-4569t 3000:3000
    $ kc get secret
    $ #find the opaque grafana secret and use cmd to get password to log into granfana dashboard
    $ kc get secret prometheus-operator-1594044504-grafana-58bb7dd46f-4569t -o jsonpath="{.data.admin-password}" | base64 --decode; echo
