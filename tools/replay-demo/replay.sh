#!/usr/bin/env bash
# ERIL Replay Demonstration Script (Public)
# ----------------------------------------
# Purpose:
#   Demonstrate conceptual replay of ERIL artifacts.
#
# This script confirms that:
#   - referenced files exist
#   - artifacts are internally consistent
#
# It does NOT re-execute proprietary governance logic.

set -e

ERIL_FILE="../../examples/eri-minimal/ERIL.md"
EXECUTION_FILE="../../examples/eri-minimal/EXECUTION.json"
EVIDENCE_FILE="../../examples/eri-minimal/EVIDENCE.json"

echo "🔁 ERIL Replay Demo"

for FILE in "$ERIL_FILE" "$EXECUTION_FILE" "$EVIDENCE_FILE"; do
  if [ ! -f "$FILE" ]; then
    echo "❌ Missing required artifact: $FILE"
    exit 1
  fi
done

echo "✅ All referenced artifacts are present."

OUTCOME=$(jq -r '.outcome' "$EVIDENCE_FILE")

echo "📄 Evidence Outcome: $OUTCOME"

echo "ℹ️  Replay demo confirms artifact consistency only."
echo "ℹ️  Deterministic governance evaluation is out of scope for public tools."

echo "✅ Replay demo completed."
