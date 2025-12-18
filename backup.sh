#!/bin/bash


SRC="var/log"
DEST="backu.log_$(date +%f)"

mkdir -p "$DEST"

cp -r "$SRC"/* "$DEST"

echo "backup complited "

