FROM ruby:2.6.0-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get update && apt-get install -y nodejs
ENV BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle \
    APP_DIR=/work
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY Gemfile $APP_DIR
COPY Gemfile.lock $APP_DIR
RUN bundle install
COPY . $APP_DIR


