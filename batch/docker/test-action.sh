docker run --rm \
  -v $PWD/in:/in \
  -v $PWD/out:/out \
  -v $PWD/main.rb:/app/main.rb \
  -w /app \
  ruby:alpine \
  ruby main.rb
