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

```bash
./gitea generate secret SECRET_KEY
./gitea generate secret INTERNAL_TOKEN
./gitea generate secret LFS_JWT_SECRET
```

Memo every keys, then write up in `/mnt/HDD1/GiteaPi/custom/conf/app.ini`.


## Create Admin

```bash
./gitea admin create-user --name dymaxionkim --password ???? --email dymaxion.kim@gmail.com --admin
```


## Auto Update Manualy

```bash
/mnt/HDD1/GiteaPi/UpdateGitea.sh
```

## Customization

```bash
cd /mnt/HDD1/GiteaPi
git pull
```

## Reboot

```bash
sudo reboot now
```


