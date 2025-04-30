#!/bin/bash

# Usage: ./change_dir.sh relative/or/absolute/path

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path_to_directory>"
  exit 1
fi

TARGET_DIR="$1"

if [ -d "$TARGET_DIR" ]; then
  cd "$TARGET_DIR" || exit
  echo "✅ Changed directory to: $(pwd)"
else
  echo "❌ Directory does not exist: $TARGET_DIR"
  exit 1
fi

