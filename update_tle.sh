#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TLE_FILE="$SCRIPT_DIR/.predict/predict.tle"

mkdir -p "$(dirname "$TLE_FILE")"
curl -fsSL https://celestrak.org/NORAD/elements/stations.txt \
  | awk '/^ISS /{print $0; getline; print $0; getline; print $0}' > "$TLE_FILE"

