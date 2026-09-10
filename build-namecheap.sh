#!/usr/bin/env bash
set -euo pipefail
npm ci
npm run build
printf '\nBuild complete. Upload the contents of ./out/ to Namecheap public_html/.\n'
