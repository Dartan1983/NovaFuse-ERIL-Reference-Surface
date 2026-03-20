# ERIL Public Architecture Overview

## Architectural Principle

ERIL is designed so that **unsafe states are structurally unreachable**.

No execution path may proceed unless all declared conditions are satisfied at the authority boundary. Any violation results in deterministic refusal prior to side effects.

---

## High-Level Components

### 1. ERIL Definition
A declarative specification describing:
- admissible inputs,
- required authorities,
- evaluation rules,
- refusal conditions,
- and evidence requirements.

This repository includes only a **minimal illustrative subset**.

---

### 2. ERI Execution
An **Executable Reference Implementation (ERI)** is a single, bounded execution of an ERIL definition:
- inputs are bound,
- rules are evaluated,
- a decision is produced,
- and an artifact is emitted.

---

### 3. Evidence Artifacts
Successful executions emit **evidence artifacts** that cryptographically bind:
- ERIL definition reference,
- inputs,
- execution outcome,
- and metadata required for replay.

Absence of a valid artifact renders the transition invalid.

---

### 4. Refusal Artifacts
When conditions are not met, execution produces a **refusal artifact**:
- explicit,
- deterministic,
- reason‑coded,
- and side‑effect free.

Refusal is a first‑class outcome.

---

### 5. Replay / Verification
Independent parties may replay:
- the ERIL definition,
- inputs,
- and artifact set

to verify that the outcome follows deterministically from the declared process.

---

## What Is Not Shown Here

This architecture overview intentionally excludes:
- enterprise deployment topology,
- performance optimization techniques,
- authority scoring or weighting logic,
- lifecycle governance workflows.

Those materials are available under license.
