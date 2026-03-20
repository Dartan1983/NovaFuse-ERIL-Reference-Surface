# ERIL Evidence Model (Public)

## Purpose of Evidence

Evidence artifacts provide **machine‑verifiable proof** that:
- a declared process was evaluated,
- conditions were checked,
- and a specific outcome occurred.

---

## Evidence Properties (Public)

An evidence artifact:
- references the ERIL definition,
- binds inputs and metadata,
- records the outcome,
- supports deterministic replay.

---

## What Evidence Is Not

Evidence is not:
- an explanation,
- a justification,
- or a compliance certificate.

Evidence enables verification, not trust.

---

## Public Schema

The public evidence schema is provided in:
- `schemas/evidence.schema.json` 

It defines **structure only**, not institutional meaning.

---

## Replay

Replay involves:
1. loading the ERIL definition reference,
2. loading the evidence artifact,
3. re‑evaluating deterministically.

See `examples/eri-minimal/REPLAY.md`.
