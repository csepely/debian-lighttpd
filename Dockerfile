FROM debian-base
RUN apt-get install -y lighttpd
COPY start.sh /usr/local/bin/
COPY lighttpd.conf /etc/lighttpd/
VOLUME ["/etc/lighttpd/", "/var/www/html"]
EXPOSE 80
CMD ["start.sh"]
