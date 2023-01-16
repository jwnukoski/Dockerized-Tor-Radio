FROM ubuntu:latest
RUN apt update
RUN apt install nginx tor -y

COPY ./nginx/config/default.conf /etc/nginx/sites-available/default

COPY ./tor/config/torrc /etc/tor/torrc
RUN mkdir /var/lib/tor/icecast

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
