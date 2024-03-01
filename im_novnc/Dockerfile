FROM alpine:latest

# ip of the vnc server
ARG VNC_HOST
# port of the vnc server
ARG VNC_PORT

EXPOSE 80

RUN --mount=type=cache,target=/var/cache/apk apk add --no-cache novnc websockify curl bash

COPY --chown=0:0 entrypoint.sh /entrypoint.sh

USER 33

ENTRYPOINT [ "/entrypoint.sh" ]
