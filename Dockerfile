FROM haskell:latest

# setup
RUN stack setup
RUN stack install cabal

# other tools
RUN apt update
RUN apt install curl
RUN apt install git

# proxy
ENV http_proxy "host.docker.internal:10809"
ENV https_proxy "host.docker.internal:10809"