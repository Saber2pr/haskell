FROM haskell:latest

# setup
RUN stack setup

# other tools
RUN apt update
RUN apt install curl
RUN apt install git

# proxy
ENV http_proxy "http://host.docker.internal:10809"
ENV https_proxy "http://host.docker.internal:10809"