FROM cyberdojo/sinatra-base:c65faf8
LABEL maintainer=jon@jaggersoft.com
# based on cagedata/rubocop

RUN gem install rubocop

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

