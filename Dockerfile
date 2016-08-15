FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential nodejs nodejs-legacy npm
RUN npm install -g phantomjs-prebuilt
RUN gem install bundler --no-ri --no-rdoc

RUN mkdir /app
WORKDIR /app
ADD . /app
