FROM cyberdojo/sinatra-base:486010d
LABEL maintainer=jon@jaggersoft.com
# based on cagedata/rubocop

RUN gem install rubocop

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

