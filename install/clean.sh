#!/usr/bin/env bash

set -euo pipefail

source ./envpaths.sh

echo "Cleaning selected components..."

# CrocoDash
if [[ "$INSTALL_CROCODASH" -eq 1 ]] && [ -d "$CROCODASH_PATH" ]; then
    echo "Removing CrocoDash..."
    git submodule deinit -f "$CROCODASH_PATH" 2>/dev/null || true
    git rm -f "$CROCODASH_PATH" 2>/dev/null || true
    rm -rf "$CROCODASH_PATH"
    echo "CrocoDash removed."
fi

# CrocoCamp
if [[ "$INSTALL_CROCOCAMP" -eq 1 ]] && [ -d "$CROCOCAMP_PATH" ]; then
    echo "Removing CrocoCamp..."
    git submodule deinit -f "$CROCOCAMP_PATH" 2>/dev/null || true
    git rm -f "$CROCOCAMP_PATH" 2>/dev/null || true
    rm -rf "$CROCOCAMP_PATH"
    echo "CrocoCamp removed."
fi

# CUPiD
if [[ "$INSTALL_CUPID" -eq 1 ]] && [ -d "$CUPID_PATH" ]; then
    echo "Removing CUPiD..."
    git submodule deinit -f "$CUPID_PATH" 2>/dev/null || true
    git rm -f "$CUPID_PATH" 2>/dev/null || true
    rm -rf "$CUPID_PATH"
    echo "CUPiD removed."
fi

# CESM
if [[ "$INSTALL_CESM" -eq 1 ]] && [ -d "$CESM_PATH" ]; then
    echo "Removing CESM..."
    git submodule deinit -f "$CESM_PATH" 2>/dev/null || true
    git rm -f "$CESM_PATH" 2>/dev/null || true
    rm -rf "$CESM_PATH"
    echo "CESM removed."
fi

echo "Cleanup complete."
