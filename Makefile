default: docker_build

DOCKER_IMAGE ?= dtzar/helm-kubectl
DOCKER_TAG ?= `git rev-parse --abbrev-ref HEAD`
VCS_REF ?= `git rev-parse --short HEAD`
BUILD_DATE ?= `date -u +"%Y-%m-%dT%H:%M:%SZ"`

# Note: Latest version of kubectl may be found at:
# https://github.com/kubernetes/kubernetes/releases
KUBE_VERSION = "1.21.1"

# Note: Latest version of helm may be found at
# https://github.com/kubernetes/helm/releases
HELM_VERSION = "3.6.0"

docker_build:
	@docker build \
	  --build-arg VCS_REF=$(VCS_REF) \
	  --build-arg BUILD_DATE=$(BUILD_DATE) \
	  --build-arg KUBE_VERSION=$(KUBE_VERSION) \
	  --build-arg HELM_VERSION=$(HELM_VERSION) \
	  -t $(DOCKER_IMAGE):$(DOCKER_TAG) .
	  
docker_push:
	# Push to DockerHub
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)
