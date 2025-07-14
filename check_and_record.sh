#!/bin/bash

SAT="ISS (ZARYA)"
TLE_FILE="$HOME/iss-sstv-auto-receiver/.predict/predict.tle"

if predict -t "$TLE_FILE" -p "$SAT" | awk '{if ($10 > 10) exit 0; else exit 1}'; then
    echo "Recording ISS SSTV transmission..."
    ./record_sstv.sh
    for f in $HOME/iss_sstv/*.wav; do
        ./decode_sstv.sh "$f"
    done
else
    echo "No pass at this time."
fi
