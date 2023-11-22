FROM grafana/promtail:latest

RUN apt update && apt install --no-install-recommends --yes rsyslog
RUN apt-get clean

COPY rsyslog.conf /etc/rsyslog.conf
COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]

EXPOSE 514/tcp 514/udp 1514/tcp 1514/udp

ENTRYPOINT ["/entrypoint.sh"]
