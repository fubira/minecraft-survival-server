#!/bin/bash
echo Run minecraft-survival-server on Docker
docker run -d -it \
  -v /mnt/storage/backup:/backup \
  -v /data/minecraft/survival/server:/data \
  -v /etc/timezone:/etc/timezone:ro \
  -v /etc/localtime:/etc/localtime:ro \
  -e 'JVM_OPTS=-Xmx4096M -Xms4096M' \
  -e EULA=TRUE \
  -e TYPE=PAPER \
  -e VERSION=1.18.1 \
  -p 25566:25565 \
  -p 8124:8123 \
  --name survival \
  itzg/minecraft-server
