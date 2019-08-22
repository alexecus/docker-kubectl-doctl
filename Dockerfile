FROM bitnami/kubectl

ENV DOCTL_VERSION 1.23.1

ADD https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz /tmp/doctl.tar.gz

RUN tar -xf /tmp/doctl.tar.gz && \
    rm /tmp/doctl.tar.gz && \
    mv /tmp/doctl /usr/local/bin/
