FROM ubuntu:22.04
USER root
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install icecast2 -y
RUN groupadd icecast-users && useradd -g icecast-users -m icecast
COPY ./config/icecast.xml /etc/icecast2/icecast.xml
RUN mkdir /etc/icecast2/logs
RUN chown -R icecast /etc/icecast2 && chmod -R 760 /etc/icecast2

# Dev
# ENTRYPOINT ["tail"]
# CMD ["-f","/dev/null"]

CMD ["su", "-", "icecast", "-c", "icecast2 -c /etc/icecast2/icecast.xml"]