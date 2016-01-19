FROM ruby:2.3.0
MAINTAINER Daisuke Fujita <dtanshi45@gmail.com> (@dtan4)

RUN apt-get update && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Gemfile /app/
COPY Gemfile.lock /app/

RUN bundle install -j4 --without development test

COPY . /app

EXPOSE 3000

ENTRYPOINT ["./entrypoint.sh"]
CMD ["bin/rails", "s", "-b", "0.0.0.0"]