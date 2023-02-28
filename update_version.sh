#!/bin/bash

OLD_VERSION="$1"
NEW_VERSION="$2"

find . -maxdepth 1 -type f ! -name changelog ! -name "$(basename "$0")" -exec sed -i "s/${OLD_VERSION//./\\.}/${NEW_VERSION//./\\.}/g" '{}' ';'
