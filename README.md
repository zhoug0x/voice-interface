# voice-interface

> quick & dirty bash scripts to run TTS models with piper from the terminal


**requirements**:
- install `piper` to the `piper` directory
- add the `libritt` and/or `semaine` models to the `models` directory
    - just currently using these 2 now for experimentation

you can find those downloads around here (somewhere):
- https://github.com/rhasspy/piper


** speaker number ranges **

- `libritt`: 0-1000+
- `semaine` 0-3


**usage:**

- generate a .wav:

    ```bash
    run.sh <input file> <model name> <speaker number>
    ```
- example:

    ```bash
    ./run.sh story.txt semaine 0
    ```
- pipe text to `stdin` & stream audio to `stdout`:

    ```bash
    stdout | stream.sh <model name> <speaker number> 
    ```
- example:

    ```bash
    cat story.txt | ./stream.sh libritts 800
    ```
