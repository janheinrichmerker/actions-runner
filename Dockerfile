FROM ghcr.io/actions/actions-runner:2.319.1

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get update -y && \
    apt-get install -y git build-essential libz-dev

USER runner
