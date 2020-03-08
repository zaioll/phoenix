FROM zaioll/elixir:latest

LABEL maintener 'Láyro Chrystofer <zaioll@protonmail.com'

SHELL ["/bin/bash", "-c"]

COPY /install /install
RUN /install/install.sh