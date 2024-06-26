#!/bin/bash

apt-get install -y gpg pass apt-transport-https ca-certificates curl

gpg --quick-generate-key hansw
pass init hansw

git config --global user.name "Hans Weisheimer"
git config --global user.email "hweisheimer@users.noreply.github.com"
git config --global credential.credentialStore gpg
git config --global init.defaultBranch main

curl -fsSL https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.5.0/gcm-linux_amd64.2.5.0.deb -o gcm-linux.deb
dpkg -i gcm-linux.deb
rm gcm-linux.deb

git credential-manager configure

git credential-manager github login

