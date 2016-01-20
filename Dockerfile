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

EXPOSE 9292

ENTRYPOINT ["./entrypoint.sh"]
CMD ["bundle", "exec", "rackup", "-p", "9292"]
