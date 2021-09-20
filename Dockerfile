FROM haskell:latest

ENV http_proxy "host.docker.internal:10809"
ENV https_proxy "host.docker.internal:10809"

RUN apt-get update
RUN apt-get install curl
RUN apt-get install git
