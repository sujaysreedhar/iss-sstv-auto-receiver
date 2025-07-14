#!/bin/bash

INFILE="$1"
OUTFILE="${INFILE%.wav}.png"
DISPLAY=:0 qsstv --rxfile="$INFILE" --outfile="$OUTFILE"
