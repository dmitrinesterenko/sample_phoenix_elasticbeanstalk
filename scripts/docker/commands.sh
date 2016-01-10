function build(){
  docker build -t blog .
}

function run(){
  docker run --rm -it --name=blog blog
}

function shell(){
  docker run --rm -it --name=blog --net=host blog /bin/bash

}
