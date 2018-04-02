FROM debian:jessie
MAINTAINER Rafael Blazquez

RUN apt-get update -qq \
    && apt-get install -q -y apt-transport-https ca-certificates curl

RUN echo 'deb https://packagecloud.io/grafana/stable/debian/ jessie main' >> /etc/apt/sources.list \
    && curl https://packagecloud.io/gpg.key | apt-key add - \
    && apt-get update -qq \
    && apt-get install -q -y grafana

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD entrypoint.sh /entrypoint.sh

EXPOSE 3000

ENTRYPOINT [ "/entrypoint.sh" ]
