FROM alpine

WORKDIR /files
VOLUME /files
EXPOSE 8000

COPY ./entrypoint.sh /
COPY ./art /usr/bin/art

ENTRYPOINT ["/entrypoint.sh"]
