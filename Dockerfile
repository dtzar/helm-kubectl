FROM alpine:3

ARG VCS_REF
ARG BUILD_DATE
ARG KUBE_VERSION
ARG HELM_VERSION

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.name="helm-kubectl" \
      org.label-schema.url="https://hub.docker.com/r/dtzar/helm-kubectl/" \
      org.label-schema.vcs-url="https://github.com/dtzar/helm-kubectl" \
      org.label-schema.build-date=$BUILD_DATE

RUN apk -U upgrade \
    && apk add --upgrade --no-cache ca-certificates bash git openssh curl gettext jq bind-tools \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/v1.21.4/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && wget -q https://get.helm.sh/helm-v3.6.4-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm \
    && chmod +x /usr/local/bin/kubectl \
    && mkdir /config \
    && chmod g+rwx /config \
    && chmod g+rxw /root \
    && helm repo add "stable" "https://charts.helm.sh/stable" --force-update

WORKDIR /config

CMD bash
