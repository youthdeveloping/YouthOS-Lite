#!/bin/sh
set -eu

# Local ISO build helper for YouthOS-Lite
# - by ChatGPT Ai

if [ "$(id -u)" -ne 0 ]; then
  echo "Run this script as root: sudo ./scripts/build-local.sh" >&2
  exit 1
fi

ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$ROOT_DIR"

command -v lb >/dev/null 2>&1 || {
  echo "live-build is missing. Install it with: apt install live-build" >&2
  exit 1
}

chmod +x config/auto/config
lb config
lb build

set -- ./*.iso
if [ ! -f "$1" ]; then
  echo "Build finished, but no ISO file was found." >&2
  exit 1
fi

echo "ISO build output:"
ls -lh ./*.iso
sha256sum ./*.iso
