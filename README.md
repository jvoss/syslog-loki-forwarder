 # Syslog Forwarder for Loki

A universal syslog forwarder for Loki using rsyslog
for RFC3164 and Promtail for RFC5424.

## Configuration

The default rsyslog configuration is configured to receive
on 514/TCP or 514/UDP and send to Promtail on localhost:1514/udp.

Promtail is configured to listen on 1514/TCP and 1514/UDP and can
be used directly for RFC 5424 syslog.

Override either configuration as necessary:
* `/etc/rsyslog.conf`
* `/etc/promtail/config.yaml` (not configured by default)
