# docker_novnc_proxy

This container provides a web interface to a VNC server.
It is based on the noVNC.

```yml
version: "3.8"
services:
  novnc:
    restart: unless-stopped
    build:
      context: im_novnc
      dockerfile: Dockerfile
    ports:
      - "8080:8080"
    environment:
      - VNC_HOST=ip/or/host
      - VNC_PORT=5900
    networks:
      - novnc
networks:
  novnc:
```

Use the following url to connect: `http://your_docker_host:8080/vnc.html?autoconnect=1&reconnect=1&resize=scale`

The connection is unencrypted.
Either use a reverse proxy with SSL or keep it in a local network.
