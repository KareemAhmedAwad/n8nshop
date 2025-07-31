#!/bin/sh

# شغّل supergateway وربطه بـ npx @shopify/dev-mcp
supergateway --stdio "npx -y @shopify/dev-mcp@latest" --port $PORT
