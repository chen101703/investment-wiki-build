#!/bin/bash
# Local development server for the investment wiki
# Builds and serves the Quartz site at http://localhost:8080
# Usage: ./dev.sh

set -e

echo "Building and serving Investment Wiki..."
echo "Open http://localhost:8080 in your browser"
echo "Press Ctrl+C to stop"
echo ""

npx quartz build --serve -d content
