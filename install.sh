#!/bin/bash

sudo apt update
sudo apt install -y git cmake build-essential libfftw3-dev libusb-1.0-0-dev \
    librtlsdr-dev rtl-sdr sox qsstv imagemagick cron predict

mkdir -p ~/.predict
cp .predict/predict.tle ~/.predict/

( crontab -l 2>/dev/null \
    | grep -v 'check_and_record.sh' \
    | grep -v 'update_tle.sh' ; \
  echo "0 3 * * * $HOME/iss-sstv-auto-receiver/update_tle.sh >> $HOME/iss_sstv/tle_update.log 2>&1" ; \
  echo "*/10 * * * * $HOME/iss-sstv-auto-receiver/check_and_record.sh >> $HOME/iss_sstv/log.txt 2>&1" \
) | crontab -
