#!/usr/bin/env bash
set -euo pipefail

SRC="../nbdev_fhemb/_proc/_docs"
DEST="docs"
TMP="docs_tmp"

rm -rf "$TMP"
mkdir -p "$TMP"

# Copy into temporary directory
cp -r "$SRC/"* "$TMP/"

# If copy succeeds, replace the old docs atomically
rm -rf "$DEST"
mv "$TMP" "$DEST"

echo "Docs synced atomically."
