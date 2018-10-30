FROM ruby:2.5.3-alpine
MAINTAINER admin
RUN cd /tmp \
  && apk --no-cache add \
    curl \
    curl-dev \
    nodejs \
    libstdc++ \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    mysql-client \
    mysql-dev \
    pcre \
    ruby-dev \
    ruby-json \
    tzdata \
    yaml \
    yaml-dev \
    bash \
    build-base \
    zlib-dev \
  && mkdir -p /var/www/anker-core
WORKDIR /var/www/anker-core
COPY ./Gemfile* /var/www/anker-core/
RUN gem install bundler 
RUN bundle install
