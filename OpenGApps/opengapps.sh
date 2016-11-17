#!/bin/bash
cd ~/Documents/github/opengapps
git pull
./download_sources.sh --shallow arm64
export PATH=/home/kyler/Android/Sdk/build-tools/25.0.0:$PATH
PATH=/home/kyler/Android/Sdk/build-tools/25.0.0:$PATH
PATH=$PATH:/home/kyler/Android/Sdk/build-tools/25.0.0
export PATH=$PATH:/home/kyler/Android/Sdk/build-tools/25.0.0


argument() {
  case $1 in
    --24)
      make arm64-24-super
    ;;
    --25)
     make arm64-25-super
    ;;
  esac
}

for arg in "$@"; do
  argument $arg
done
