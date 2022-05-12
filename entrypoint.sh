#!/bin/bash

echo 1 | xp
echo -e "5\n$2\n$2" | xp
cloudflared service install $1
rm -rf /www/admin/localhost_80/wwwroot
ln -s /github/workspace /www/admin/localhost_80/wwwroot
tail -f /var/log/alternatives.log
