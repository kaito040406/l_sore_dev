FROM ruby:3.0.1

RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN mkdir /l-store

WORKDIR /l-store

ADD Gemfile /l-store/Gemfile

ADD Gemfile.lock /l-store/Gemfile.lock

# RUN gem update --system

RUN bundle install

ADD . /l-store

RUN mkdir -p tmp/sockets