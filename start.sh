#!/bin/bash
if [ -e /tmp/logpipe ]
then
  rm /tmp/logpipe
fi
mkfifo -m 600 /tmp/logpipe
cat <> /tmp/logpipe 1>&2 &
chown www-data /tmp/logpipe
exec /usr/sbin/lighttpd -D -f /etc/lighttpd/lighttpd.conf 2>&1
