#!/bin/bash

mv -f /mnt/HDD1/GiteaPi/gitea /mnt/HDD1/GiteaPi/gitea.old
#wget -O /mnt/HDD1/GiteaPi/gitea https://dl.gitea.io/gitea/master/gitea-master-linux-arm-6
wget -O /mnt/HDD1/GiteaPi/gitea https://dl.gitea.io/gitea/master/gitea-master-linux-amd64
chmod +x /mnt/HDD1/GiteaPi/gitea

exit 0
