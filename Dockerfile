FROM haskell:latest

# setup
RUN stack setup

# other tools
RUN apt update
RUN apt install curl
RUN apt install git

# git config
RUN git config --global http.sslBackend gnutls
# disable git ssl
ENV GIT_SSL_NO_VERIFY true

# proxy
ENV http_proxy "http://host.docker.internal:10809"
ENV https_proxy "http://host.docker.internal:10809"