FROM ubuntu:latest
USER root
RUN mkdir /usr/share/ices
WORKDIR /usr/share/ices
RUN apt update
RUN apt install ices2 \
                dir2ogg \
                normalize-audio \
                dir2ogg \ 
                lame \ 
                mpg123 \ 
                alac-decoder -y
COPY ./config/ices.xml /usr/share/ices/ices.xml

# Scripts
RUN mkdir scripts
COPY ./scripts/* ./scripts/
RUN chmod +x ./scripts/*

# Log location
RUN mkdir /var/log/ices && touch /var/log/ices/ices.log

# test:
RUN touch /dev/null

# Entrypoint to handle everything after volumes mount
ENTRYPOINT ["./scripts/entrypoint.sh"]