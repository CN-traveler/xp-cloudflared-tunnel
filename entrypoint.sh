#!/bin/bash

echo 1 | xp
echo -e "5\n$2\n$2" | xp
cloudflared service install $1

ls

tail -f /var/log/alternatives.log
