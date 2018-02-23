FROM ruby:2.4

WORKDIR /app
ADD Gemfile /app
ADD Gemfile.lock /app
RUN bundle install
COPY . /app
