#!/bin/bash

# usage: run.sh <input file> <model name> <speaker number>

input_file="$1"
model_name="$2"
speaker_number="$3"

model_path=""

if [ "$model_name" = "libritts" ]; then
    model_path="models/libritts/en-us-libritts-high.onnx"
elif [ "$model_name" = "semaine" ]; then
    model_path="models/semaine/en_GB-semaine-medium.onnx"
else
    echo "invalid model name, choices: 'libritts' or 'semaine'"
    exit 1
fi

cat "$input_file" | ./piper/piper \
--model "$model_path" --speaker "$speaker_number" \
--output_file output.wav && mpv output.wav
