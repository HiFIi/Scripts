#!/bin/bash
mkdir -p ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git config --global http.postBuffer 1048576000
repo sync --force-broken --force-sync -f -j16
