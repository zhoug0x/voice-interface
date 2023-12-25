# voice-interface

> quick & dirty bash scripts to run TTS models with piper from the terminal


**setup:**
- install [piper](https://github.com/rhasspy/piper) at the root of this repo in a directory named `piper`
    - important: make sure the `piper` binary & supporting libraries are added


**optional:**
- add the `libritt` and/or `semaine` models to the `models` directory
    - these models have multiple "speakers" (voices) to play with
    - follow the folder convention of the existing `alba` model to install

you can find those downloads around here (somewhere):
- https://github.com/rhasspy/piper


** speaker number ranges **

- `alba`: no speaker number
- `libritt`: 0-1000+
- `semaine` 0-3


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
