
# ==================
# Setting up k8s/dev kind env

kind-up:
	kind create cluster --name dev-cluster --config ./kind-config.yaml

kind-down:
	kind delete cluster --name dev-cluster

# =============
# Admin

echo:
	@echo $(shell pwd) 

# ===================
# Installing Applications

install-prom-helm:
	helm repo add stable https://kubernetes-charts.storage.googleapis.com
	helm repo update
	kubectl create ns monitoring
	helm install stable/prometheus-operator -g -n monitoring

#install-prom-manifests:
