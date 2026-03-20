# ERIL Public Verifier (Reference)

## Purpose

The verifier directory contains **public, reference‑level tools** for validating
the **structure and replay‑readiness** of ERIL artifacts.

It is designed to answer one question:

> "Is this artifact well‑formed and replay‑eligible?"

It does **not** answer:
- whether a decision was correct,
- whether policy intent was valid,
- whether compliance requirements were met.

---

## What This Verifier Does

✅ Validates:
- evidence artifact structure
- required fields
- schema conformance

✅ Supports:
- independent review
- reproducibility
- artifact hygiene checks

---

## What This Verifier Does Not Do

❌ It does not:
- apply normative governance rules
- evaluate thresholds or weights
- issue certification or compliance claims
- replace assessor judgment

Those capabilities exist only in licensed materials.

---

## Requirements

- `jq` 
- `ajv` 

---

## Usage

```bash
cd verifier
./verify.sh
```

---

## Output

*   ✅ PASS — artifact structure is valid
*   ❌ FAIL — artifact is malformed or incomplete

---

## Important Notice

Successful verification here **does not imply approval, certification,
or regulatory compliance**.

This verifier confirms **structural validity only**.
