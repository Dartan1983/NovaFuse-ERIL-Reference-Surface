# ERIL Terminology (Public Reference)

## Scope

This document defines a **public subset** of ERIL terminology sufficient to
interpret artifacts and examples in this repository.

It is derived from the ERI lexicon pattern and intentionally excludes
terms whose definitions would disclose proprietary governance logic.

---

## Core Terms

### ERIL (Executable Reference Implementation Language)
A declarative language used to express governance requirements as executable,
fail‑closed procedures that produce verifiable evidence.

---

### ERI (Executable Reference Implementation)
A single, bounded execution of an ERIL definition that evaluates inputs,
produces a decision (execution or refusal), and emits an artifact.

---

### Evidence Artifact
A machine‑verifiable record emitted upon successful execution that binds:
- ERIL definition reference,
- evaluated inputs,
- execution outcome,
- and replay metadata.

Evidence enables independent verification.

---

### Refusal Artifact
An explicit artifact emitted when execution conditions are not satisfied.
Refusal is deterministic, reason‑coded, and side‑effect free.

---

### Fail‑Closed
A property of ERIL execution in which violations prevent progression
rather than degrading or partially executing.

---

### Authority Boundary
The evaluation boundary at which admissibility, authorization, and governance
conditions are enforced before execution.

---

### Replay
The process of independently re‑evaluating an ERIL definition against recorded
inputs and artifacts to verify that outcome follows deterministically.

---

## Supporting Terms

### Input Binding
The explicit association of inputs to an ERI execution such that they cannot
be altered without invalidating the artifact.

---

### Deterministic
Given the same ERIL definition and bound inputs, execution produces the same
outcome and artifacts.

---

### Governance Scope
The set of decisions and behaviors ERIL governs. ERIL governs execution
mechanics, not outcome correctness or intent.

---

## Terms Intentionally Omitted

The following categories of terms are defined only in licensed documentation:
- lifecycle governance roles and procedures
- authority weighting and scoring logic
- compliance thresholds
- certification classifications
- assessor decision rules

Their omission is intentional and protects institutional IP.

---

## Relationship to ERI Lexicon

This terminology adapts the structure of the ERI lexicon
(see ERI‑Lexicon‑v1.0) to the ERIL layer.

Where ERI terms describe **execution instances**, ERIL terms describe
**governance definitions**.

---

## Interpretation Guidance

Terms in this document:
- describe structure, not policy intent
- enable artifact interpretation
- do not imply compliance or approval

For full normative definitions, consult licensed ERIL materials.
