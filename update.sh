#!/usr/bin/env bash

EMAIL=ericka@tokomendau.net

dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key "${EMAIL}" -abs -o - Release > Release.gpg
gpg --default-key "${EMAIL}" --clearsign -o - Release > InRelease

git add .
git commit -m  "Package update"
git push origin master
