#!/bin/bash
TLE_PATH="$HOME/iss-sstv-auto-receiver/.predict/predict.tle"
curl -L -o "$TLE_PATH" https://celestrak.org/NORAD/elements/stations.txt
