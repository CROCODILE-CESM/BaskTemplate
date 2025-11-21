#!/usr/bin/env bash

set -euo pipefail

source ./envpaths.sh
#### CrocoDash

if [[ "$INSTALL_CROCODASH" -eq 1 ]]; then
    echo "Downloading CrocoDash..."
    if [ ! -d "$CROCODASH_PATH" ]; then
        git submodule add https://github.com/CROCODILE-CESM/CrocoDash.git "$CROCODASH_PATH"
    else
        echo "CrocoDash already exists at $CROCODASH_PATH, skipping submodule add."
    fi
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
    if [ ! -d "$CROCOCAMP_PATH" ]; then
        git submodule add https://github.com/CROCODILE-CESM/CrocoCamp.git "$CROCOCAMP_PATH"
    else
        echo "CrocoCamp already exists at $CROCOCAMP_PATH, skipping submodule add."
    fi
    cd "$CROCOCAMP_PATH"
    git fetch --tags
    git checkout 4b785f3
    cd "$BASK_PATH"
    echo "CrocoCamp downloaded."
fi

#### CUPiD

if [[ "$INSTALL_CUPID" -eq 1 ]]; then
    echo "Downloading CUPiD..."
    if [ ! -d "$CUPID_PATH" ]; then
        git submodule add https://github.com/NCAR/CUPiD.git "$CUPID_PATH"
    else
        echo "CUPiD already exists at $CUPID_PATH, skipping submodule add."
    fi
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
    if [ ! -d "$CESM_PATH" ]; then
        git submodule add -b workshop_2025 https://github.com/CROCODILE-CESM/CESM "$CESM_PATH"
    else
        echo "CESM already exists at $CESM_PATH, skipping submodule add."
    fi
    cd "$CESM_PATH"
    git pull
    git submodule update --init
    echo "CESM downloaded."
fi
