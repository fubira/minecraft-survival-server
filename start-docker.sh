#!/bin/bash
echo Run minecraft-survival-server on Docker
docker run -d -it \
  -v /mnt/storage/backup:/backup \
  -v /data/minecraft/survival-1.16/server:/data \
  -v /etc/timezone:/etc/timezone:ro \
  -v /etc/localtime:/etc/localtime:ro \
  -e 'JVM_OPTS=-Xmx1024M -Xms1024M' \
  -e EULA=TRUE \
  -e TYPE=PAPER \
  -e VERSION=1.16.5 \
  -p 25566:25565 \
  -p 8124:8123 \
  --name survival \
  itzg/minecraft-server
