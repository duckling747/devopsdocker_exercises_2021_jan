FROM alpine
RUN apk add --update git docker openrc && \
    rc-update add docker boot
COPY ./builder.sh .
ENTRYPOINT ["./builder.sh"]
