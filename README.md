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

# ETC


* Javascripts

```bash
git clone https://github.com/JinJunho/Madeleine.js.git ~/Gitea/custom/public/Madeleine.js
nano ~/Gitea/custom/templates/custom/footer.tmpl
```

```html
<!--  MathJax  -->
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    tex2jax: {
      inlineMath: [ ['$','$'], ["\\(","\\)"] ],
      processEscapes: true
    }
  });
</script>

<!--  Mermaid  -->
{{if .RequireHighlightJS}}
<script src="https://unpkg.com/mermaid@8.4.5/dist/mermaid.min.js"></script>
<!-- or wherever you have placed it -->
<script>mermaid.init(".language-mermaid")</script>
{{end}}

<!--  STL Preview  -->
<script>
function lS(src){
  return new Promise(function(resolve, reject) {
    let s = document.createElement('script')
    s.src = src
    s.addEventListener('load', () => {
      resolve()
    })
    document.body.appendChild(s)
  });
}

if($('.view-raw>a[href$=".stl" i]').length){
  $('body').append('<link href="/Madeleine.js/src/css/Madeleine.css" rel="stylesheet">');
  Promise.all([lS("/Madeleine.js/src/lib/stats.js"),lS("/Madeleine.js/src/lib/detector.js"), lS("/Madeleine.js/src/lib/three.min.js"), lS("/Madeleine.js/src/Madeleine.js")]).then(function() {
    $('.view-raw').attr('id', 'view-raw').attr('style', 'padding: 0;margin-bottom: -10px;');
    new Madeleine({
      target: 'view-raw',
      data: $('.view-raw>a[href$=".stl" i]').attr('href'),
      path: '/Madeleine.js/src'
    });
    $('.view-raw>a[href$=".stl"]').remove()
  });
}
</script>
```

* Update Script

```bash
nano ~/Gitea/UpdateGitea.sh
```

```bash
#!/bin/bash

mv -f /home/mech/Gitea/gitea /home/mech/Gitea/gitea.old
wget -O /home/mech/Gitea/gitea https://dl.gitea.io/gitea/master/gitea-master-linux-amd64
chmod +x /home/mech/Gitea/gitea

cd /home/mech/Gitea/custom/public/Madeleine.js
git pull
cd /home/mech

sudo systemctl restart gitea

exit 0
```
