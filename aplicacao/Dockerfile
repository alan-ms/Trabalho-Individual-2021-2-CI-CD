FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /aplicacao

WORKDIR /aplicacao

ADD Gemfile /aplicacao
ADD Gemfile.lock /aplicacao

RUN gem install bundler

RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]