FROM ruby:3.2.4-slim

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    build-essential default-libmysqlclient-dev curl git \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# 依存だけ先に解決（レイヤーキャッシュ）
COPY Gemfile Gemfile.lock ./
RUN bundle config set path '/usr/local/bundle' \
 && bundle config set without 'production' \
 && bundle install --jobs=4

# アプリ本体
COPY . .

EXPOSE 3000
