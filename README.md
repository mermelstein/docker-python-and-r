# One Container to Rule Them All

Run R and Python in the same Docker container. Just run `.docker_run.sh` from the terminal and you're good to go.

# Details

The Docker image is a Debian OS with python 3.12 and base R installed. The primary script/entrypoint is `main.py`, which runs the R script `say_hello.R` as a subprocess.
