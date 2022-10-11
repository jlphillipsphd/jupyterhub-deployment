#!/bin/sh

# Only run once
# helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/

# Grab latest updates
# helm repo update

# kubectl create namespace jupyterhub

# kubectl -n jupyterhub create secret tls jupyterhub-tls --key="tls.key" --cert="tls.crt"

# helm upgrade --install jupyter jupyterhub/jupyterhub \
helm upgrade --install jupyterhub jupyterhub/jupyterhub \
	--namespace jupyterhub \
	--version=2.0.0 \
	--timeout=60m \
	--values values-jupyterhub.yaml


