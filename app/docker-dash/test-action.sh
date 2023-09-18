#!/usr/bin/env sh

docker run --rm \
  -e RUN_IN_DOCKER=true \
  -e HUB_IN="/in" \
  -e HOST="0.0.0.0" \
  -p 8050:8050 \
  -v "$PWD/src/in":/in \
  -v "$PWD/src":/app \
  -w /app \
  python \
  bash -c \
    "pip install -r requirements.txt && python main.py"
