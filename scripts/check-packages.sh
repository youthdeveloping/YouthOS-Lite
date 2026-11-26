#!/bin/sh
set -eu

# Validate the selected packages against the configured Debian repositories.
# Run after apt-get update and before starting live-build.
# - by ChatGPT Ai

ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
PACKAGE_LIST="$ROOT_DIR/config/package-lists/youthos-lite.list.chroot"

if [ ! -f "$PACKAGE_LIST" ]; then
  echo "Package list not found: $PACKAGE_LIST" >&2
  exit 1
fi

failed=0
while IFS= read -r package || [ -n "$package" ]; do
  case "$package" in
    ""|#*) continue ;;
  esac

  if ! apt-cache show "$package" >/dev/null 2>&1; then
    echo "Unavailable Debian package: $package" >&2
    failed=1
  fi
done < "$PACKAGE_LIST"

if [ "$failed" -ne 0 ]; then
  echo "Fix unavailable package names in $PACKAGE_LIST before building." >&2
  exit 1
fi

echo "All YouthOS-Lite package names are available in the configured repositories."
