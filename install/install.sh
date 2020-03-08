#!/bin/bash

su ${usuario} -c ". /home/${usuario}/kerl/${otp_version}/activate && source /home/${usuario}/.kiex/elixirs/elixir-${elixir_version}.env \
    && /home/${usuario}/.kiex/elixirs/elixir-${elixir_version}/bin/mix local.hex --force \
    && /home/${usuario}/.kiex/elixirs/elixir-${elixir_version}/bin/mix local.rebar --force \
    && /home/${usuario}/.kiex/elixirs/elixir-${elixir_version}/bin/mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez"

curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh 
chmod +x nodesource_setup.sh 
./nodesource_setup.sh

DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
npm update npm