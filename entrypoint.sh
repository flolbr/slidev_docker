#!/bin/sh

if [ "$BUN_MIRROR" != "" ]; then
    bun config set registry $BUN_MIRROR
fi

echo "Installing slidev and themes..."
bun add @slidev/cli @slidev/theme-seriph @slidev/theme-default

if [ -f /slidev/slides.md ]; then
    echo "Start slidev..."
    
else
    echo "slides.md not found in the bind mount to /slidev"
    cp -f /slidev/node_modules/@slidev/cli/template.md /slidev/slides.md
    sed -i ':a;N;$!ba;s/GitHub"\n/GitHub"/g' /slidev/slides.md

fi

if [ "$BUN_MIRROR" != "" ]; then
    bun config delete registry
fi

bunx slidev --remote

