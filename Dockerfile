FROM ghcr.io/actions/actions-runner:2.311.0

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get update -y && \
    apt-get install -y git

USER runner