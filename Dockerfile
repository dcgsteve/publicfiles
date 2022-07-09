FROM scratch

COPY ./art /go/bin/art

WORKDIR /files

CMD ["/go/bin/art","serve","-p","8000","-l"]