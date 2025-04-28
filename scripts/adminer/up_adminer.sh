#!/bin/bash

COMPOSE_FILE="composes/adminer/compose.yml"

if [ ! -f "${COMPOSE_FILE}" ]; then
  echo "❌ Compose file ${COMPOSE_FILE} not found!"
  exit 1
fi

echo "🚀 Launching adminer..."
docker compose -f "${COMPOSE_FILE}" up -d
