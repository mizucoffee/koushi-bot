FROM ruby:3.0.0

ADD . /koushi-bot
WORKDIR /koushi-bot

RUN bundle install

CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
