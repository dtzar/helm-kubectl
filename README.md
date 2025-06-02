# helm-kubernetes Docker hub image

[![ci](https://github.com/dtzar/helm-kubectl/actions/workflows/image-build-push.yaml/badge.svg)](https://github.com/dtzar/helm-kubectl/actions/workflows/image-build-push.yaml)
[![Docker Stars](https://img.shields.io/docker/stars/dtzar/helm-kubectl.svg?style=flat)](https://hub.docker.com/r/dtzar/helm-kubectl/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dtzar/helm-kubectl.svg?style=flat)](https://hub.docker.com/r/dtzar/helm-kubectl/)

Supported tags and release links

* [3.18.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.18.1) - helm v3.18.1, kubectl v1.33.1, alpine 3.21
* [3.18.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.18.0) - helm v3.18.0, kubectl v1.33.1, alpine 3.21
* [3.17.3](https://github.com/dtzar/helm-kubectl/releases/tag/3.17.3) - helm v3.17.3, kubectl v1.32.5, alpine 3.21
* [3.17.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.17.2) - helm v3.17.2, kubectl v1.32.3, alpine 3.21
* [3.17.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.17.0) - helm v3.17.0, kubectl v1.32.1, alpine 3.20
* [3.16.4](https://github.com/dtzar/helm-kubectl/releases/tag/3.16.4) - helm v3.16.4, kubectl v1.32.0, alpine 3.20
* [3.16.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.16.2) - helm v3.16.2, kubectl v1.31.1, alpine 3.20
* [3.16.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.16.1) - helm v3.16.1, kubectl v1.31.1, alpine 3.20
* [3.16.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.16.0) - helm v3.16.0, kubectl v1.31.1, alpine 3.20

The image tags below are dynamic and overwritten with the latest helm image under that semVer:

* 3.<minor#> - helm v3.<minor#>.x, kubectl v1.x, alpine 3.x.  Example: 3.15
* 3 - helm 3.x, kubectl 1.x, alpine 3.x

Releases from Helm 2.3.1 to 3.15.4 and the above dynamic tags can be found [on Docker Hub tags page](https://hub.docker.com/r/dtzar/helm-kubectl/tags).

## Overview

This lightweight alpine docker image provides kubectl and helm binaries for working with a Kubernetes cluster. A local configured kubectl is a prerequisite to use helm per [helm documentation](https://github.com/kubernetes/helm/blob/master/docs/quickstart.md). This image is useful for general helm administration such as deploying helm charts and managing releases. It is also perfect for any automated deployment pipeline needing to use helm which supports docker images such as [Concourse CI](https://concourse.ci), [Jenkins on Kubernetes](https://kubeapps.com/charts/stable/jenkins), [Travis CI](https://docs.travis-ci.com/user/docker/), and [Circle CI](https://circleci.com/integrations/docker/). Having bash installed allows for better support for troubleshooting by being able to exec / terminal in and run desired shell scripts. Git installed allows installation of [helm plugins](https://github.com/kubernetes/helm/blob/master/docs/plugins.md).

If it is desired to only use kubectl and have kubectl as the entry command (versus this image as bash entry command), I recommend checking out this image instead:
[lachlanevenson/kubectl](https://hub.docker.com/r/lachlanevenson/k8s-kubectl/)

## Run

Example to just run helm on entry:  
`docker run --rm dtzar/helm-kubectl helm`  
By default kubectl will try to use /root/.kube/config file for connection to the kubernetes cluster, but does not exist by default in the image.

Example for use with personal administration or troubleshooting with volume mount for kubeconfig files:  
`docker run -it -v ~/.kube:/root/.kube dtzar/helm-kubectl`  
The -v maps your host docker machine Kubernetes configuration directory (~/.kube) to the container's Kubernetes configuration directory (root/.kube).

## Build

For doing a manual local build of the image:  
`make docker_build`
