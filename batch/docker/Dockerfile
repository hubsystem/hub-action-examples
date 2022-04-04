FROM ruby:alpine

RUN mkdir -p /app
ADD main.rb /app/

WORKDIR /app
ENTRYPOINT ["ruby", "main.rb"]
