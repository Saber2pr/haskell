FROM haskell:latest

ENV http_proxy "host.docker.internal:10809"
ENV https_proxy "host.docker.internal:10809"

RUN apt update
RUN apt install curl
RUN apt install git
