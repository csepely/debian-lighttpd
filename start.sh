#!/bin/bash
chmod a+w /dev/pts/0
exec /usr/sbin/lighttpd -D -f /etc/lighttpd/lighttpd.conf
