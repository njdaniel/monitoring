
# ==================
# Setting up k8s/dev kind env

kind-up:
	kind create cluster --name dev-cluster

kind-down:
	kind delete cluster --name dev-cluster
