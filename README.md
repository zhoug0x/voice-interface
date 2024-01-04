# voice-interface

> quick & dirty bash scripts to run TTS models with [piper](https://github.com/rhasspy/piper) from the terminal

**usage:**

- generate a .wav:

  ```bash
  run.sh <input file> <model name> <speaker number>
  ```

- example:

  ```bash
  ./run.sh story.txt alba
  # or
  ./run.sh story.txt semaine 0
  ```

- pipe text to `stdin` & stream audio to `stdout`:

  ```bash
  stdout | stream.sh <model name> <speaker number>
  ```

- example:

  ```bash
  cat story.txt | ./stream.sh alba
  # or
  cat story.txt | ./stream.sh libritts 800
  ```

**speaker number ranges**

- `alba`: no speaker number
- `libritt`: 0-903
- `semaine` 0-3

**optional:**

- add the `libritt` and/or `semaine` models to the `models` directory
  - these models have multiple "speakers" (voices) to play with
  - follow the folder convention of the existing `alba` model to install

you can find those downloads around here along with other piper-compatible models:

- https://huggingface.co/rhasspy/piper-voices/tree/main

you can preview the models here before you download them

- https://rhasspy.github.io/piper-samples
