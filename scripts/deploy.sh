#!/usr/bin/env bash
set -e

if [ "$CI" = "strapi-cloud" ]; then
  npm ci
else
  pnpm install
fi

npm run build
npm run strapi deploy
