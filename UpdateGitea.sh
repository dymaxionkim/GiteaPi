#!/bin/bash

mv -f /mnt/HDD1/gitea/gitea /mnt/HDD1/gitea/gitea.old
wget -O /mnt/HDD1/gitea/gitea https://dl.gitea.io/gitea/master/gitea-master-linux-arm-7
chmod +x /mnt/HDD1/gitea/gitea

exit 0


