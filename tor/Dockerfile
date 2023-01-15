FROM ubuntu:latest
RUN apt update
RUN apt install nginx tor -y
COPY ./nginx/default.conf /etc/nginx/sites-available/default

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]