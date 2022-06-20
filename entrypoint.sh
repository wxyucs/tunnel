#!/bin/ash
set -e

ssh -o StrictHostKeyChecking=no \
    -o ServerAliveInterval=15 \
    -o ServerAliveCountMax=3 \
    -tt -D 0.0.0.0:1080 -i $IDENTITY_FILE $USER@$HOST
