 # Syslog Forwarder for Loki

A universal syslog forwarder for Loki using rsyslog and promtail.

## About

The [recomended Promtail configuration for syslog](https://grafana.com/docs/loki/latest/send-data/promtail/configuration/#syslog)
is to place a Syslog receiver in front of Promtail to receive and translate
syslog to RFC 5424 compliant messages. This container seeks to do just that.

The included default rsyslog configuration is comes out of the box ready to
receive syslog on ports 514/UDP and 514/TCP and ship them to a local Promtail
process listening on `127.0.0.1:1514/udp`.

This configuration allows for you to have the best of both worlds: A syslog
receiver that can translate older formats (rsyslog/514) while also able to
optionally receive newer syslog formats directly to Promtail (port 1514).

## Configuration

1. Pull the image:

        docker pull ghcr.io/jvoss/syslog-loki-forwarder/syslog-loki-forwarder:latest

2. Configure Promtail for your needs ([example](examples/promtail_example.yaml))

3. Launch the container with the configuration mounted:

        -v /path/to/my/promtail.yaml:/etc/promtail/config.yaml

    Optionally override the included `rsyslog` configuration for your own needs:
    
        -v /path/to/my/rsyslog.conf:/etc/rsyslog.conf

4. Profit!
