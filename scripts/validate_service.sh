#!/bin/bash
set -e

for i in {1..20}; do
  if curl -fsS http://localhost/health >/dev/null; then
    echo "OK"
    exit 0
  fi
  sleep 3
done

echo "FAILED"
exit 1
