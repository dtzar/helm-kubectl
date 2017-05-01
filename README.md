# Kubernetes Client

[![](https://images.microbadger.com/badges/image/dtzar/kubectl.svg)](https://microbadger.com/images/dtzar/helm-kubectl "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dtzar/kubectl.svg)](https://microbadger.com/images/dtzar/helm-kubectl "Get your own version badge on microbadger.com")

# Supported tags and respective `Dockerfile` links

* `1.6.2`    [(1.6.2/Dockerfile)](https://github.com/dtzar/helm-kubectl/blob/1.6.2/Dockerfile) - kubectl v1.6.2, helm v2.1.3


## Overview

This container provides kubectl and helm utilities for working with a Kubernetes cluster.  This is useful when doing helm  

If you desire only kubectl installed and this as the entry command, I recommend checking out these images instead:
* [lachlanevenson/kubectl](https://hub.docker.com/r/lachlanevenson/k8s-kubectl/)
* [kodaii/kubectl](https://hub.docker.com/r/koudaiii/kubectl/)
* [wernight/kubectl](https://hub.docker.com/r/wernight/kubectl/)

## Build

`make docker_build`

## Run

`docker run -it -v ~/.kube:/root/.kube dtzar/helm-kubectl`

The -v maps your host docker machine Kubernetes configuration directory (~/.kube) to the container's Kubernetes configuration directory (root/.kube).
