# Gitea_Custom

My Personal Gitea Service on RaspberryPi3


## Install

```bash
cd /home/pi/github
git clone https://github.com/dymaxionkim/GiteaPi.git

mkdir /mnt/HDD1/gitea
ln -s /home/pi/github/GiteaPi/custom /mnt/HDD1/gitea/custom
ln -s /home/pi/github/GiteaPi/UpdateGitea.sh /mnt/HDD1/gitea/UpdateGitea.sh

sudo echo -e "\n" >> /etc/rc.local
sudo echo "# Gitea" >> /etc/rc.local
sudo echo "su - pi -c '/mnt/HDD1/gitea/gitea web' &" >> /etc/rc.local
```

## First Start

```bash
/mnt/HDD1/gitea/gitea web --port 3100 --config /mnt/HDD1/GiteaPi/custom/conf/app.ini
```

* Every paths should be absolute path names.


## Auto Update

```bash
/mnt/HDD1/gitea/UpdateGitea.sh
```

## Customization

```bash
cd /home/pi/GiteaPi/GiteaPi_Custom
git pull
```

## Reboot

```bash
sudo reboot now
```


