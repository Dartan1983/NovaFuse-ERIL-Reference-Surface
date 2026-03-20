# ERIL Refusal Semantics

## Refusal as a First-Class Outcome

In ERIL, refusal is not an error condition.
It is an **intentional, valid, and auditable outcome**.

---

## Properties of Refusal

A refusal MUST:
- occur before any side effect,
- be deterministic,
- include an explicit reason code,
- produce a refusal artifact.

---

## Why Refusal Matters

Refusal semantics:
- prevent silent failures,
- eliminate partial execution,
- preserve audit integrity,
- and reduce downstream harm.

Refusal is evidence that governance worked.

---

## Public Example

See:
- `examples/eri-refusal/ERIL.md` 
- `examples/eri-refusal/REFUSAL.json` 

for a minimal refusal demonstration.
