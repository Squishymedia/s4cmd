FROM alpine:3.5

RUN apk --update --no-cache add python py-pip bash && \
    pip install s4cmd==2.0.1

RUN chmod +x /usr/bin/s4cmd

ENTRYPOINT ["/usr/bin/s4cmd"]

CMD ["--help"]
