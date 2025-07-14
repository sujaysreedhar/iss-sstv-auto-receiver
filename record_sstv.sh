
---

### 📜 `record_sstv.sh`

```bash
#!/bin/bash

OUTDIR="$HOME/iss_sstv"
mkdir -p "$OUTDIR"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
WAVFILE="$OUTDIR/sstv_$TIMESTAMP.wav"

# Duration in seconds
DURATION=600

# Record audio
rtl_fm -f 145800000 -M fm -s 22050 -g 40 -p 0 | sox -t raw -r 22050 -es -b 16 -c 1 -V1 - "$WAVFILE" trim 0 $DURATION
