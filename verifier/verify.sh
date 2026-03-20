#!/usr/bin/env bash
# ERIL Public Verification Script (Reference)
# ------------------------------------------
# Purpose:
#   Perform a minimal structural verification of ERIL evidence artifacts.
#
# Scope:
#   - Confirms schema validity
#   - Confirms required fields exist
#   - Does NOT evaluate policy intent, thresholds, or compliance
#
# This script is intentionally simple and IP-safe.

set -e

EVIDENCE_FILE="../examples/eri-minimal/EVIDENCE.json"
SCHEMA_FILE="../schemas/evidence.schema.json"

if ! command -v jq >/dev/null 2>&1; then
  echo "❌ jq is required but not installed."
  exit 1
fi

if ! command -v ajv >/dev/null 2>&1; then
  echo "❌ ajv (Another JSON Schema Validator) is required."
  echo "   Install with: npm install -g ajv-cli"
  exit 1
fi

echo "🔍 Validating evidence artifact structure..."

ajv validate -s "$SCHEMA_FILE" -d "$EVIDENCE_FILE" --strict=false

echo "✅ Evidence artifact structure is valid."
echo "ℹ️  Note: This check verifies structure only, not governance meaning."
