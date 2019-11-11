FROM ruby:2.6-slim

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev imagemagick libmagickwand-dev

ENV INSTALL_PATH /petadmin

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile.lock /$INSTALL_PATH/Gemfile.lock
COPY Gemfile ./

ENV BUNDLE_PATH /box

COPY . /$INSTALL_PATH
