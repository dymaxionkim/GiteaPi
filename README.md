# Gitea_Custom

My Personal Gitea Service on RaspberryPi3


## Install

```bash
cd /mnt/HDD1
git clone https://github.com/dymaxionkim/GiteaPi.git

./UpdateGitea.sh
```

## Set Auto Start

```bash
sudo nano /etc/rc.local
```

Add next :

```
# Gitea
su - pi -c '/mnt/HDD1/GiteaPi/gitea web' &
```

## Certifications




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


