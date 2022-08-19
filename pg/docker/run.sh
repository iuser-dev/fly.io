#!/usr/bin/env sh

servers_json=/data/servers.json
if [ ! -f "$servers_json" ]; then
echo "{}" > $servers_json
fi

cd /pgadmin4
ln -s $servers_json .

exec /entrypoint.sh
