FROM alpine:latest

RUN mkdir /app
WORKDIR /app

#ADD . /app/

#CMD ["ruby", "hello.rb"]

CMD ["echo", "hello"]
