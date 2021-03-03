FROM ruby:2.5.7

RUN apt-get update -qq && \
apt-get install -y build-essential \
									 libpq-dev \
									 nodejs \
									 default-mysql-client \
									 vim

RUN mkdir /chromedriver

WORKDIR /chromedriver

COPY Gemfile /chromedriver/Gemfile
COPY Gemfile.lock /chromedriver/Gemfile.lock

RUN bundle install

COPY . /chromedriver