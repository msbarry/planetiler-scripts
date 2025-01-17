#!/usr/bin/env bash

docker stop $(docker ps -aq)
docker run -it --restart always -v /mnt/efs/fs1/:/data -p 8080:8080 maptiler/tileserver-gl \
  --public_url https://6ug7hetxl9.execute-api.us-east-2.amazonaws.com/ --mbtiles planet.mbtiles
