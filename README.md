# Kubernetes Client

[![](https://images.microbadger.com/badges/image/dtzar/helm-kubectl.svg)](https://microbadger.com/images/dtzar/helm-kubectl "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dtzar/helm-kubectl.svg)](https://microbadger.com/images/dtzar/helm-kubectl "Get your own version badge on microbadger.com")

# Supported tags and respective `Dockerfile` links

* `1.6.2`    [(1.6.2/Dockerfile)](https://github.com/dtzar/helm-kubectl/blob/1.6.2/Dockerfile) - kubectl v1.6.2, helm v2.3.1


## Overview

This lightweight alpine docker image provides kubectl and helm binaries for working with a Kubernetes cluster.  A local configured kubectl is a prerequisite to use helm per [helm documentation](https://github.com/kubernetes/helm/blob/master/docs/quickstart.md).  This image is useful for general helm administration such as deploying helm charts and managing releases. It is also perfect for any automated deployment pipeline needing to use helm which supports docker images such as [Concourse CI](https://concourse.ci), [Jenkins on Kubernetes](https://kubeapps.com/charts/stable/jenkins), and [Circle CI](https://circleci.com/integrations/docker/).  Having bash installed allows for better support for troubleshooting by being able to exec / terminal in and run desired shell scripts.

If it is desired to only use kubectl and have kubectl as the entry command (versus this image as bash entry command), I recommend checking out these images instead:
* [lachlanevenson/kubectl](https://hub.docker.com/r/lachlanevenson/k8s-kubectl/)
* [wernight/kubectl](https://hub.docker.com/r/wernight/kubectl/)

## Build

`make docker_build`

## Run

This example run command is for use with personal administration or troubleshooting.

`docker run -it -v ~/.kube:/root/.kube dtzar/helm-kubectl`

The -v maps your host docker machine Kubernetes configuration directory (~/.kube) to the container's Kubernetes configuration directory (root/.kube).
