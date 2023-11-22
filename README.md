 # Syslog Forwarder for Loki

A universal syslog forwarder for Loki using rsyslog
for RFC3164 and Promtail for RFC5424.

## Configuration

The default rsyslog configuration is configured to receive
on 514/TCP or 514/UDP and send to Promtail on localhost:1514/udp.

Promtail may be configured as normal.

Override either configuration as necessary:
* `/etc/rsyslog.conf`
* `/etc/promtail/config.yaml` (not configured by default)
