#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILE="file://$DIR/index.html"
echo "⚖️  Extrator Jurídico — OAB/MG 183712"
echo "Abrindo: $FILE"
if command -v open &>/dev/null; then open "$FILE"
elif command -v google-chrome &>/dev/null; then google-chrome "$FILE" &
elif command -v chromium-browser &>/dev/null; then chromium-browser "$FILE" &
elif command -v firefox &>/dev/null; then firefox "$FILE" &
elif command -v xdg-open &>/dev/null; then xdg-open "$FILE" &
else echo "Abra manualmente: $DIR/index.html"; fi
