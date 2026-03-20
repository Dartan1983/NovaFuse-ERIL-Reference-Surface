# NORMATIVE-CORE-INDEX.md
## ERIL Public Normative Core Index (Subset) — v0.1.x

This document provides a **public index** of normative claims supported by this repository and identifies which normative materials are intentionally omitted as protected IP.

This is not the full ERIL specification. It is an **index of a public subset** sufficient to:
- demonstrate fail-closed behavior,
- deterministic refusal semantics,
- and evidence artifact integrity / replay.

---

## A) Public Normative Claims (Subset)

The following claims are supported by artifacts and examples in this repo.

### NC-01 — Fail-Closed Execution
**Claim:** An execution path SHALL NOT proceed if required invariants are not satisfied; violation SHALL produce refusal prior to side effects. [1](https://www.gsma.com/newsroom/wp-content/uploads//NG.133-v1.0.pdf)  
**Public evidence:** `docs/public/REFUSAL-SEMANTICS.md`, `examples/eri-refusal/*` 

### NC-02 — Deterministic Refusal Semantics
**Claim:** Refusal outcomes SHALL be explicit, deterministic, and emitted as artifacts with reason codes. [1](https://www.gsma.com/newsroom/wp-content/uploads//NG.133-v1.0.pdf)  
**Public evidence:** `schemas/refusal.schema.json`, `examples/eri-refusal/REFUSAL.json` 

### NC-03 — Evidence-Gated State Transition
**Claim:** A valid evidence artifact SHALL be a prerequisite for governed transition; absence of valid artifact renders transition impossible. [1](https://www.gsma.com/newsroom/wp-content/uploads//NG.133-v1.0.pdf)  
**Public evidence:** `schemas/evidence.schema.json`, `examples/eri-minimal/EVIDENCE.json` 

### NC-04 — Replay Verification
**Claim:** A verifier SHOULD be able to independently validate an execution artifact set without trusting the executor.  
**Public evidence:** `examples/eri-minimal/REPLAY.md`, `verifier/*` 

### NC-05 — Scope / Non-Claims Boundary
**Claim:** The public verification surface SHALL NOT be interpreted as regulatory approval, certification authority, or outcome correctness guarantee. [2](https://industrial-software.com/wp-content/uploads/AVEVA_SystemPlatform/2023_r2_p01/System_Platform/ReadMe.html)[3](https://arxiv.org/html/2507.05201v2)  
**Public evidence:** `README.md`, `IP-BOUNDARY.md` 

---

## B) Public Documents (Descriptive, Non-Exhaustive)

These documents explain concepts at a high level, without disclosing proprietary governance mechanisms:
- `docs/public/OVERVIEW.md` 
- `docs/public/ARCHITECTURE.md` 
- `docs/public/THREAT-MODEL-SUMMARY.md` 
- `docs/public/REFUSAL-SEMANTICS.md` 
- `docs/public/EVIDENCE-MODEL.md` 

---

## C) Licensed / Omitted Normative Materials (Protected IP)

The following are referenced but intentionally omitted from the public repository:
- Full ERIL normative vocabulary (complete SHALL/SHOULD/MAY corpus)
- Lifecycle governance procedures (authoring → approval → deployment → revocation)
- Responsibility allocation framework (institutional RACI)
- Conformance test thresholds and assessor decision rules
- Detailed standards mapping matrices and regulator-ready crosswalks
- Proprietary methods, decomposition rules, and trade-secret techniques [5](https://securityboulevard.com/author/marian-newsome/)

To access licensed materials: novafuse.technologies@gmail.com

---

## D) Lexicon Strategy (ERI → ERIL)

This repository maintains an ERIL lexicon that adapts and extends to ERI lexicon pattern.

- Source ERI Lexicon (reference):  
  https://github.com/Dartan1983/NovaFuse-ERI-System/blob/main/ERI-000-Formalization/ERI-Lexicon-v1.0.md

- ERIL Lexicon (public subset) should define only **terms required** to interpret the public subset:
  - ERIL Definition
  - ERI Execution
  - Evidence Artifact
  - Refusal Artifact
  - Replay
  - Authority Boundary
  - Source Attestation (high-level)

Any terms tied to proprietary evaluation methods remain in licensed documentation.

---

## E) Change Control (Public)

Public releases SHOULD be tagged and include:
- release version
- commit hash
- artifact schema versions

This ensures third-party replay remains stable over time.

(For enterprise change control procedures, see licensed materials.)
