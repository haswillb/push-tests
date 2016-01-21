FROM ruby:latest

RUN mkdir /app
WORKDIR /app

ADD . /app/

CMD ["ruby", "hello.rb"]
