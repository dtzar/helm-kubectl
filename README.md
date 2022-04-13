# helm-kubernetes Docker hub image

[![ci](https://github.com/dtzar/helm-kubectl/actions/workflows/image-build-push.yaml/badge.svg)](https://github.com/dtzar/helm-kubectl/actions/workflows/image-build-push.yaml)
[![Docker Stars](https://img.shields.io/docker/stars/dtzar/helm-kubectl.svg?style=flat)](https://hub.docker.com/r/dtzar/helm-kubectl/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dtzar/helm-kubectl.svg?style=flat)](https://hub.docker.com/r/dtzar/helm-kubectl/)

Supported tags and release links

* [3.8.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.8.2) - helm v3.8.2, kubectl v1.23.5, alpine 3.15
* [3.8.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.8.1) - helm v3.8.1, kubectl v1.23.4, alpine 3.15
* [3.8.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.8.0) - helm v3.8.0, kubectl v1.23.2, alpine 3.15
* [3.7.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.7.2) - helm v3.7.2, kubectl v1.23.0, alpine 3.15
* [3.7.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.7.1) - helm v3.7.1, kubectl v1.22.2, alpine 3.14
* [3.7.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.7.0) - helm v3.7.0, kubectl v1.22.2, alpine 3.14
* [3.6.3](https://github.com/dtzar/helm-kubectl/releases/tag/3.6.3) - helm v3.6.3, kubectl v1.21.2, alpine 3.14
* [3.6.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.6.2) - helm v3.6.2, kubectl v1.21.2, alpine 3.14
* [3.6.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.6.0) - helm v3.6.0, kubectl v1.21.1, alpine 3.14
* [3.5.4](https://github.com/dtzar/helm-kubectl/releases/tag/3.5.4) - helm v3.5.4, kubectl v1.21.0, alpine 3.14
* [3.5.3](https://github.com/dtzar/helm-kubectl/releases/tag/3.5.3) - helm v3.5.3, kubectl v1.20.4, alpine 3.13
* [3.5.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.5.2) - helm v3.5.2, kubectl v1.20.2, alpine 3.13
* [3.5.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.5.1) - helm v3.5.1, kubectl v1.20.2, alpine 3.13
* [3.5.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.5.0) - helm v3.5.0, kubectl v1.20.2, alpine 3.12
* [3.4.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.4.2) - helm v3.4.2, kubectl v1.20.1, alpine 3.12
* [3.4.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.4.1) - helm v3.4.1, kubectl v1.19.4, alpine 3.12
* [3.4.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.4.0) - helm v3.4.0, kubectl v1.19.3, alpine 3.12
* [3.3.4](https://github.com/dtzar/helm-kubectl/releases/tag/3.3.4) - helm v3.3.4, kubectl v1.19.2, alpine 3.12
* [3.3.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.3.1) - helm v3.3.1, kubectl v1.18.8, alpine 3.12
* [3.3.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.3.0) - helm v3.3.0, kubectl v1.18.6, alpine 3.12
* [3.2.4](https://github.com/dtzar/helm-kubectl/releases/tag/3.2.4) - helm v3.2.4, kubectl v1.18.3, alpine 3.12
* [3.2.3](https://github.com/dtzar/helm-kubectl/releases/tag/3.2.3) - helm v3.2.3, kubectl v1.18.3, alpine 3.12
* [3.2.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.2.1) - helm v3.2.1, kubectl v1.18.2, alpine 3.11
* [3.2.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.2.0) - helm v3.2.0, kubectl v1.18.2, alpine 3.11
* [3.1.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.1.2) - helm v3.1.2, kubectl v1.17.3, alpine 3.11
* [3.1.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.1.1) - helm v3.1.1, kubectl v1.17.3, alpine 3.11
* [3.1.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.1.0) - helm v3.1.0, kubectl v1.17.3, alpine 3.11
* [3.0.3](https://github.com/dtzar/helm-kubectl/releases/tag/3.0.3) - helm v3.0.3, kubectl v1.17.2, alpine 3.11
* [3.0.2](https://github.com/dtzar/helm-kubectl/releases/tag/3.0.2) - helm v3.0.2, kubectl v1.17.0, alpine 3.10
* [3.0.1](https://github.com/dtzar/helm-kubectl/releases/tag/3.0.1) - helm v3.0.1, kubectl v1.16.3, alpine 3.10
* [3.0.0](https://github.com/dtzar/helm-kubectl/releases/tag/3.0.0) - helm v3.0.0, kubectl v1.16.2, alpine 3.10
* [2.17.0](https://github.com/dtzar/helm-kubectl/releases/tag/2.17.0) - helm v2.17.0, kubectl v1.19.4, alpine 3.12
* Releases from Helm 2.3.1 to 2.16.1 can be found [here](https://hub.docker.com/r/dtzar/helm-kubectl/tags).

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
