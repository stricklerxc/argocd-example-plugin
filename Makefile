IMAGE=public.ecr.aws/m3i7d4x6/argocd-plugin:latest

build:
	docker build -t $(IMAGE) plugin/

push: build
	docker push $(IMAGE)

install-argo:
	kubectl create namespace argocd || true
	kubectl kustomize argocd/ | kubectl apply -f - -n argocd

get-argo-creds:
	kubectl -n argocd get secret/argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d 
