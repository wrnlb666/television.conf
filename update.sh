#!/usr/bin/env bash

[[ -d ~/.config/television/cable ]] || mkdir -p ~/.config/television/cable

ln -sf "$(pwd)/config.toml" ~/.config/television/config.toml
for path in cable/*; do
    chan="${path##*/}"
    ln -sf "$(pwd)/cable/${chan}" ~/.config/television/cable/
done
