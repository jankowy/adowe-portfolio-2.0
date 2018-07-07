FROM ruby:2.5.1-slim

RUN apt-get update && \
    apt-get install -qq -y --no-install-recommends \
    build-essential pkg-config cmake

ENV INSTALL_PATH /app

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

ENV BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle

COPY . .
