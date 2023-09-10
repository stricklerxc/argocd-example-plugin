# ArgoCD Example Plugin

## Overview
Example ArgoCD plugin that renders ERB templates in a repo into K8s manifests that can be applied to the cluster.

## Getting Started

1. Install minikube
1. Start a minikube cluster via `minikube start`
1. Enable the ingress add-on via `minikube addon enable ingress`
1. If using Docker Desktop, run `minikube tunnel`
1. Install argocd with `make install-argo`
1. Login to ArgoCD using the password returned from `make get-argo-creds`
1. Connect the git repo in `Settings -> Repositories -> Connect Repo`
1. Add a `New App` under `Application`, select `Edit as YAML` and paste the manifest from `test-app/application.yaml`
    - You will need to modify the `repoURL` to match your repository before saving.
1. Sync the app and navigate to [http://127.0.0.1](http://127.0.0.1) to see the deployed test-app

