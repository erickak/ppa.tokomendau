# PPA

## Update Repo

1. Add desired deb packages to root folder
2. `$ ./update.sh`

## Connecting

1. `$ curl -s --compressed "https://erickak.github.io/ppa.tokomendau/KEY.gpg" | sudo apt-key add -`
2. `$ sudo curl -s --compressed -o /etc/apt/sources.list.d/ppa.tokomendau.list "https://${GITHUB_USERNAME}.github.io/ppa.tokomendau/ppa.tokomendau.list"`
3. `$ sudo apt update`
