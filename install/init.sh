#!/usr/bin/env sh

set -euo pipefail

source ./envpaths.sh
#### CrocoDash

if [[ "$INSTALL_CROCODASH" -eq 1 ]]; then
    echo "Downloading CrocoDash..."
    git submodule add https://github.com/CROCODILE-CESM/CrocoDash.git "$CROCODASH_PATH"
    cd "$CROCODASH_PATH"
    git fetch --tags
    git checkout v0.1.0-beta
    cd "$BASK_PATH"
    cd "$CROCODASH_PATH"
    git submodule update --init --recursive
    cd "$BASK_PATH"
    echo "CrocoDash downloaded."
fi
#### CrocoCamp

if [[ "$INSTALL_CROCOCAMP" -eq 1 ]]; then
    echo "Downloading CrocoCamp..."
    git submodule add https://github.com/CROCODILE-CESM/CrocoCamp.git "$CROCOCAMP_PATH"
    cd "$CROCOCAMP_PATH"
    git fetch --tags
    git checkout 4b785f3
    cd "$BASK_PATH"
    echo "CrocoCamp downloaded."
fi

#### CUPiD

if [[ "$INSTALL_CROCOCAMP" -eq 1 ]]; then
    echo "Downloading CUPiD..."
    git submodule add https://github.com/NCAR/CUPiD.git "$CUPID_PATH"
    cd "$CUPID_PATH"
    git fetch --tags
    git checkout v0.3.1
    cd "$BASK_PATH"
    cd "$CUPID_PATH"
    git submodule update --init --recursive
    cd "$BASK_PATH"
    echo "CUPiD downloaded."
fi

#### CESM

if [[ "$INSTALL_CESM" -eq 1 ]]; then
    echo "Downloading CESM..."
    git submodule add -b workshop_2025 https://github.com/CROCODILE-CESM/CESM "$CESM_PATH"
    cd "$CESM_PATH"
    git pull
    git submodule update --init
    echo "CESM downloaded."
fi
