#!/usr/bin/env bash
# Generate MikroTik /ip dns adlist file (hosts format, 0.0.0.0) from the Pi-hole list.
set -euo pipefail
cd "$(dirname "$0")"
src=turris-hole-czech-block-list
out=mikrotik-czech-block-list
{
  echo "# Czech block list - MikroTik adlist (hosts format, generated from $src)"
  echo "# Do not edit; run ./build-mikrotik-adlist.sh"
  grep -v -e '^[[:space:]]*#' -e '^[[:space:]]*$' "$src" \
    | tr -d '\r' | tr '[:upper:]' '[:lower:]' | awk '{print $1}' | sort -u \
    | awk '{print "0.0.0.0 " $1}'
} > "$out"
echo "wrote $out ($(grep -vc '^#' "$out") entries)"
