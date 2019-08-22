FROM bitnami/kubectl

ENV DOCTL_VERSION 1.23.1

RUN curl -L https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz  | tar xz
RUN mv doctl /usr/local/bin/
