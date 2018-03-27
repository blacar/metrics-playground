FROM debian:jessie
RUN apt-get update && apt-get install -y curl
COPY files/polling.sh /opt/polling/lib/polling.sh
RUN chmod 755 /opt/polling/lib/polling.sh
ENTRYPOINT ["/opt/polling/lib/polling.sh"]
