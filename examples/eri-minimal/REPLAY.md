# Replay Instructions — ERI Minimal Example

## Purpose

This document describes how an independent reviewer can replay the minimal ERI
execution using artifacts in this directory.

Replay verifies **process determinism**, not outcome correctness.

---

## Required Artifacts

- ERIL definition:
  - `ERIL.md` 
- Execution record:
  - `EXECUTION.json` 
- Evidence artifact:
  - `EVIDENCE.json` 

---

## Replay Steps (Conceptual)

1. Load the ERIL definition.
2. Load the execution inputs.
3. Re‑evaluate the declared conditions.
4. Confirm that the evaluation result matches the evidence artifact outcome.

If the same inputs and definition produce the same outcome, replay succeeds.

---

## Expected Result

Replay SHOULD result in:
- outcome: `EXECUTE` 
- no refusal condition triggered
- evidence artifact deemed consistent

---

## Scope Notice

This replay procedure:
- does not require trust in the original executor,
- does not imply certification or approval,
- does not validate policy intent.

It validates **execution integrity only**.
