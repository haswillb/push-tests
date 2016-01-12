FROM ruby:latest

RUN mkdir /app
WORKDIR /app

ADD Gemfile .
RUN bundle install

ADD . .

CMD ["bundle", "exec", "ruby", "app.rb"]