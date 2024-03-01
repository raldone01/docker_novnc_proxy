#!/bin/ash

websockify 0.0.0.0:8080 "$VNC_HOST:$VNC_PORT" --web /usr/share/novnc/
