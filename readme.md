# Ubuntu Elixir

A container for building Ubuntu and Elixir. 

## Build

    docker build -t ubuntu-elixir .

## Run

    docker run --rm ubuntu-elixir

    docker run --rm --it ubuntu-elixir /bin/bash 
    docker run --rm ubuntu-elixir elixir -v


## Publish
    
    docker build -t cdesch/ubuntu-elixir .
    docker push cdesch/ubuntu-elixir:latest


https://kaiwern.com/posts/2020/06/20/building-elixir/phoenix-release-with-docker/