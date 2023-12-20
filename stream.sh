#!/bin/bash

# usage: stdout | stream.sh <model name> <speaker number>

model_name="$1"
speaker_number="$2"

model_path=""

if [ "$model_name" = "libritts" ]; then
    model_path="models/libritts/en-us-libritts-high.onnx"
elif [ "$model_name" = "semaine" ]; then
    model_path="models/semaine/en_GB-semaine-medium.onnx"
else
    echo "invalid model name, choices: 'libritts' or 'semaine'"
    exit 1
fi

# stream stdin to piper
./piper/piper \
--model "$model_path" --speaker "$speaker_number" \
--output_raw | aplay -r 22050 -f S16_LE -t raw -
