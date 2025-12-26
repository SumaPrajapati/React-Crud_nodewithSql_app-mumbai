#!/bin/bash
set -e

echo "Validating service at http://localhost:8080 ..."

for i in {1..20}; do
  if curl -fsS http://localhost:8080/ >/dev/null; then
    echo "Service is up."
    exit 0
  fi
  echo "Service not up yet (attempt $i). Retrying in 3 seconds..."
  sleep 3
done

echo "Service validation failed."
exit 1
