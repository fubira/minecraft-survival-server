#!/bin/bash
echo Run minecraft-survival-server on Docker
docker run -d -it \
  -v /data/minecraft-survival-server/backup:/backup \
  -v /data/minecraft-survival-server/server:/data \
  -v /data/minecraft-survival-server/template:/data/template \
  -v /etc/timezone:/etc/timezone:ro \
  -v /etc/localtime:/etc/localtime:ro \
  -e 'JVM_OPTS=-Xmx1024M -Xms1024M' \
  -e EULA=TRUE \
  -e TYPE=PAPER \
  -e VERSION=1.11.2 \
  -p 25565:25565 \
  -p 8123:8123 \
  --name survival \
  itzg/minecraft-server
