#!/usr/bin/env bash
set -e

# Detect Strapi Cloud via CI env
if [ "$CI" = "strapi-cloud" ] || [ "$STRAPI_CLOUD" = "true" ]; then
  echo "💡 Running npm install for Strapi Cloud"
  npm ci
else
  echo "🔧 Running pnpm install locally"
  pnpm install
fi

# Common build steps
npm run build
npm run strapi deploy
