#!/bin/bash
PORT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$PORT_DIR" || exit 1
mkdir -p "$PORT_DIR/conf"
if [ ! -x "$PORT_DIR/sm64.us.f3dex2e" ]; then
    echo "Missing executable: $PORT_DIR/sm64.us.f3dex2e"
    echo "Add your own compatible Render96ex x86_64 build; this package does not include it."
    exit 1
fi
exec "$PORT_DIR/sm64.us.f3dex2e" --savepath "$PORT_DIR/conf/"
