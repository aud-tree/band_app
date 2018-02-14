FROM ruby:2.4

WORKDIR /app
ADD Gemfile /app
ADD Gemfile.lock /app
RUN bundle install
ADD . /app
EXPOSE 3000
ENV PATH /app/bin:$PATH
CMD rails s
