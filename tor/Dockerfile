FROM ubuntu:latest
RUN apt update
RUN apt install nginx -y
COPY ./nginx/default.conf /etc/nginx/sites-available/default

# RUN apt install tor -y

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]