docker run --rm \
  -v "$PWD"/in:/in \
  -v "$PWD"/out:/out \
  -v "$PWD"/data:/data \
  -p 1880:1880 \
  nodered/node-red:latest
