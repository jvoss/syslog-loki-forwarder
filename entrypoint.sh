#!/bin/sh

# Start rsyslog
echo "Start rsyslog"
/usr/sbin/rsyslogd

# Execute the given or default command
/usr/bin/promtail $@
